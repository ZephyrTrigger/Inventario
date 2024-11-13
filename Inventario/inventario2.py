from flask import Flask, render_template, request, jsonify, send_file, redirect, url_for
import sqlite3
import pandas as pd
import random
import os

app = Flask(__name__)
UPLOAD_FOLDER = 'uploads'
os.makedirs(UPLOAD_FOLDER, exist_ok=True)

# Función para conectar a la base de datos
def get_db_connection():
    conn = sqlite3.connect('inventario.db')
    conn.row_factory = sqlite3.Row
    return conn



# Ruta principal para renderizar la página
@app.route('/')
def index():
    return render_template('index.html')

# Ruta para exportar los datos a un archivo Excel
@app.route('/exportar_excel', methods=['GET'])
def exportar_excel():
    conn = get_db_connection()
    productos = conn.execute('SELECT * FROM inventario').fetchall()
    conn.close()
    
    # Convertir los datos a un DataFrame de pandas
    df = pd.DataFrame(productos, columns=['ID', 'SKU', 'Descripción', 'Cantidad', 'Ubicación', 'Código de Barras', 'Costo', 'Categoría'])
    
    # Guardar el DataFrame en un archivo Excel
    archivo_excel = 'inventario_exportado.xlsx'
    df.to_excel(archivo_excel, index=False)
    
    # Enviar el archivo Excel al usuario
    return send_file(archivo_excel, as_attachment=True)

# Nueva ruta para importar datos desde un archivo Excel y reemplazar la base de datos
@app.route('/importar_excel', methods=['POST'])
def importar_excel():
    if 'file' not in request.files:
        return jsonify({'message': 'No se subió ningún archivo'}), 400
    
    file = request.files['file']
    
    # Guardar el archivo temporalmente
    file_path = os.path.join(UPLOAD_FOLDER, file.filename)
    file.save(file_path)
    
    # Leer el archivo Excel
    try:
        df = pd.read_excel(file_path)
    except Exception as e:
        return jsonify({'message': f'Error al leer el archivo Excel: {str(e)}'}), 500
    
    # Verificar que el archivo tenga las columnas esperadas
    columnas_esperadas = {'SKU', 'Descripción', 'Cantidad', 'Ubicación', 'Código de Barras', 'Costo', 'Categoría'}
    if not columnas_esperadas.issubset(df.columns):
        return jsonify({'message': 'El archivo Excel no tiene las columnas requeridas.'}), 400
    
    # Hacer una copia de seguridad antes de reemplazar
    conn = get_db_connection()
    conn.execute('CREATE TABLE IF NOT EXISTS inventario_backup AS SELECT * FROM inventario')
    conn.commit()
    
    # Eliminar todos los registros actuales de la tabla 'inventario'
    conn.execute('DELETE FROM inventario')
    
    # Insertar los datos del DataFrame en la tabla 'inventario'
    for _, row in df.iterrows():
        conn.execute(
            'INSERT INTO inventario (sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) VALUES (?, ?, ?, ?, ?, ?, ?)',
            (row['SKU'], row['Descripción'], str(row['Cantidad']), row['Ubicación'], row['Código de Barras'], row['Costo'], row['Categoría'])
        )
    conn.commit()
    conn.close()
    
    # Eliminar el archivo Excel subido para limpieza
    os.remove(file_path)
    
    return jsonify({'message': 'Inventario importado y base de datos actualizada correctamente.'}), 200
    
# Paso 1: Cargar el archivo Excel
excel_path = r'C:\Users\Martin Prieto\Documents\Mis Programas\Inventario\inventario_exportado.xlsx'
df = pd.read_excel(excel_path)

# Paso 2: Añadir una columna de ID auto-incremental
df['ID'] = range(1, len(df) + 1)

# Paso 3: Conectar a la base de datos y reemplazar la tabla existente
db_path = 'inventario.db'  # Cambia esto a la ruta de tu base de datos
conn = sqlite3.connect(db_path)
cursor = conn.cursor()

# Respaldar la tabla actual (opcional)
cursor.execute('CREATE TABLE IF NOT EXISTS inventario_backup AS SELECT * FROM inventario')

# Vaciar la tabla actual
cursor.execute('DELETE FROM inventario')
conn.commit()

# Paso 4: Insertar los datos del DataFrame en la base de datos con los nuevos IDs
for _, row in df.iterrows():
    cursor.execute('''
        INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria)
        VALUES (?, ?, ?, ?, ?, ?, ?, ?)
    ''', (row['ID'], row['SKU'], row['Descripción'], row['Cantidad'], row['Ubicación'], row['Código de Barras'], row['Costo'], row['Categoría']))

conn.commit()
conn.close()

print("Base de datos actualizada con los datos importados y nuevos IDs.")

# Ruta para obtener todos los productos
@app.route('/productos', methods=['GET'])
def obtener_productos():
    conn = get_db_connection()
    productos = conn.execute('SELECT * FROM inventario').fetchall()
    conn.close()
    return jsonify([dict(row) for row in productos])

# Generador de SKU único
def generar_sku_automatico():
    while True:
        nuevo_sku = f'PROD-{random.randint(1000, 9999)}'
        conn = get_db_connection()
        sku_existe = conn.execute('SELECT sku FROM inventario WHERE sku = ?', (nuevo_sku,)).fetchone()
        conn.close()
        if not sku_existe:
            return nuevo_sku

# Ruta para agregar un producto
@app.route('/producto', methods=['POST'])
def agregar_producto():
    datos = request.get_json()
    sku = datos.get('sku', '').strip()  # Obtén el SKU del JSON, si no existe será una cadena vacía
    descripcion = datos.get('descripcion')
    cantidad = datos.get('cantidad')
    ubicacion = datos.get('ubicacion')
    codigo_barras = datos.get('codigo_barras')
    costo = datos.get('costo')
    categoria = datos.get('categoria')

    # Generar SKU automáticamente si no se proporcionó uno
    if not sku:
        sku = generar_sku_automatico()

    # Conectar y agregar el producto a la base de datos
    conn = get_db_connection()
    conn.execute(
        'INSERT INTO inventario (sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) VALUES (?, ?, ?, ?, ?, ?, ?)',
        (sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria)
    )
    conn.commit()
    conn.close()

    return jsonify({'message': 'Producto agregado exitosamente', 'sku': sku}), 201

# Ruta para modificar un producto
@app.route('/producto/<int:id>', methods=['PUT'])
def modificar_producto(id):
    datos = request.get_json()
    descripcion = datos.get('descripcion')
    cantidad = datos.get('cantidad')
    ubicacion = datos.get('ubicacion')
    codigo_barras = datos.get('codigo_barras')
    costo = datos.get('costo')
    categoria = datos.get('categoria')
    
    if None in [descripcion, cantidad, ubicacion, codigo_barras, costo, categoria]:
        return jsonify({'message': 'Datos incompletos'}), 400

    conn = get_db_connection()
    conn.execute(
        'UPDATE inventario SET descripcion = ?, cantidad = ?, ubicacion = ?, codigo_barras = ?, costo = ?, categoria = ? WHERE id = ?',
        (descripcion, cantidad, ubicacion, codigo_barras, costo, categoria, id)
    )
    conn.commit()
    conn.close()
    
    return jsonify({'message': 'Producto modificado exitosamente'})

# Ruta para eliminar un producto
@app.route('/producto/<int:id>', methods=['DELETE'])
def eliminar_producto(id):
    conn = get_db_connection()
    conn.execute('DELETE FROM inventario WHERE id = ?', (id,))
    conn.commit()
    conn.close()
    return jsonify({'message': 'Producto eliminado exitosamente'})

  

# Rutas para búsqueda por SKU, Código de Barras e ID
@app.route('/producto/sku/<string:sku>', methods=['GET'])
def buscar_por_sku(sku):
    conn = get_db_connection()
    producto = conn.execute('SELECT * FROM inventario WHERE sku = ?', (sku,)).fetchone()
    conn.close()
    if producto:
        return jsonify(dict(producto))
    else:
        return jsonify({'message': 'Producto no encontrado'}), 404

@app.route('/producto/codigo_barras/<string:codigo_barras>', methods=['GET'])
def buscar_por_codigo_barras(codigo_barras):
    conn = get_db_connection()
    producto = conn.execute('SELECT * FROM inventario WHERE codigo_barras = ?', (codigo_barras,)).fetchone()
    conn.close()
    if producto:
        return jsonify(dict(producto))
    else:
        return jsonify({'message': 'Producto no encontrado'}), 404

@app.route('/producto/id/<int:id>', methods=['GET'])
def buscar_por_id(id):
    conn = get_db_connection()
    producto = conn.execute('SELECT * FROM inventario WHERE id = ?', (id,)).fetchone()
    conn.close()
    if producto:
        return jsonify(dict(producto))
    else:
        return jsonify({'message': 'Producto no encontrado'}), 404





if __name__ == '__main__':
    app.run(debug=True)
