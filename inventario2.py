from flask import Flask, render_template, request, jsonify, send_file
import sqlite3
import pandas as pd
import random
import os
from sqlite3 import IntegrityError
from datetime import datetime
from urllib.parse import unquote

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
    
    # Guardar el DataFrame en un archivo Excel con nombre único
    filename = f"export_{datetime.now().strftime('%Y%m%d_%H%M%S')}.xlsx"
    file_path = os.path.join(UPLOAD_FOLDER, filename)
    df.to_excel(file_path, index=False)
    
    # Enviar el archivo Excel al usuario
    return send_file(file_path, as_attachment=True)

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
    
    # Verificar que el archivo tenga las columnas esperadas, incluida la columna 'ID'
    columnas_esperadas = {'ID', 'SKU', 'Descripción', 'Cantidad', 'Ubicación', 'Código de Barras', 'Costo', 'Categoría'}
    if not columnas_esperadas.issubset(df.columns):
        return jsonify({'message': 'El archivo Excel no tiene las columnas requeridas.'}), 400

    conn = get_db_connection()
    try:
        # Eliminar todos los registros actuales de la tabla 'inventario'
        conn.execute('DELETE FROM inventario')
        
        # Insertar los datos del DataFrame en la tabla 'inventario' con el mismo ID
        for _, row in df.iterrows():
            conn.execute(
                'INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) VALUES (?, ?, ?, ?, ?, ?, ?, ?)',
                (int(row['ID']), row['SKU'], row['Descripción'], str(row['Cantidad']), row['Ubicación'], row['Código de Barras'], row['Costo'], row['Categoría'])
            )
        conn.commit()
        mensaje = {'message': 'Inventario importado y base de datos actualizada correctamente con los mismos IDs.'}
        status_code = 200
    except Exception as e:
        conn.rollback()
        mensaje = {'message': f'Error al actualizar la base de datos: {str(e)}'}
        status_code = 500
    finally:
        conn.close()
        os.remove(file_path)  # Eliminar el archivo Excel subido para limpieza

    return jsonify(mensaje), status_code

    
# Ruta para obtener todos los productos
@app.route('/productos', methods=['GET'])
def obtener_productos():
    conn = get_db_connection()
    productos = conn.execute('SELECT * FROM inventario').fetchall()
    conn.close()
    return jsonify([dict(row) for row in productos])

def generar_sku_automatico(descripcion, ubicacion):
    """Genera un SKU único en el formato 'PROD-####'."""
    while True:
        nuevo_sku = f'PROD-{random.randint(1000, 9999)}'
        
        # Verificar si el SKU ya existe para la misma descripción y ubicación
        conn = get_db_connection()
        sku_existe = conn.execute(
            'SELECT sku FROM inventario WHERE sku = ? AND descripcion = ? AND ubicacion = ?', 
            (nuevo_sku, descripcion, ubicacion)
        ).fetchone()
        conn.close()
        
        # Si no existe el SKU con la misma descripción y ubicación, lo devolvemos
        if not sku_existe:
            return nuevo_sku

@app.route('/producto', methods=['POST'])
def agregar_producto():
    datos = request.get_json()

    # Extraer y validar los datos del producto
    descripcion = datos.get('descripcion')
    cantidad = datos.get('cantidad')
    ubicacion = datos.get('ubicacion')
    codigo_barras = datos.get('codigo_barras')
    costo = datos.get('costo')
    categoria = datos.get('categoria')

    # Verificación de campos obligatorios
    if not descripcion or not cantidad or not ubicacion or not costo or not categoria:
        return jsonify({'message': 'Por favor complete todos los campos requeridos.'}), 400

    try:
        # Asegurar que cantidad y costo son numéricos
        cantidad = int(cantidad)
        costo = float(costo)
    except ValueError:
        return jsonify({'message': 'Los campos "cantidad" y "costo" deben ser numéricos.'}), 400

    # Generar SKU automáticamente
    sku = generar_sku_automatico(descripcion, ubicacion)

    # Intento de conexión e inserción en la base de datos
    conn = get_db_connection()
    try:
        conn.execute(
            'INSERT INTO inventario (sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) VALUES (?, ?, ?, ?, ?, ?, ?)',
            (sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria)
        )
        conn.commit()
        mensaje = {'message': 'Producto agregado exitosamente', 'sku': sku}
        status_code = 201
    except IntegrityError as e:
        # Capturar errores de integridad y mostrar un mensaje claro
        print(f"IntegrityError: {str(e)}")
        mensaje = {'message': 'Error de integridad: El SKU ya existe para esta ubicación.', 'error': str(e)}
        status_code = 400
    except Exception as e:
        # Capturar otros errores y mostrar el mensaje de error
        print(f"Error desconocido: {str(e)}")
        mensaje = {'message': 'Error al agregar el producto. Ocurrió un error inesperado.', 'error': str(e)}
        status_code = 500
    finally:
        conn.close()

    # Devolver mensaje detallado con el SKU generado (si aplica)
    return jsonify(mensaje), status_code




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


@app.route('/categorias', methods=['GET'])
def obtener_categorias():
    """
    Devuelve todas las categorías únicas de la base de datos.
    """
    conn = get_db_connection()
    categorias = conn.execute('SELECT DISTINCT categoria FROM inventario WHERE categoria IS NOT NULL').fetchall()
    conn.close()
    return jsonify([row['categoria'] for row in categorias])

    
@app.route('/producto/categoria/<string:categoria>', methods=['GET'])
def buscar_por_categoria(categoria):
    conn = get_db_connection()
    productos = conn.execute('SELECT * FROM inventario WHERE categoria = ?', (categoria,)).fetchall()
    conn.close()
    
    if productos:
        return jsonify([dict(row) for row in productos])
    else:
        return jsonify({'message': 'No se encontraron productos en esta categoría'}), 404

@app.route('/producto/descripcion/<path:descripcion>', methods=['GET'])
def buscar_por_descripcion(descripcion):
    # Decodificar el parámetro de la descripción
    descripcion = unquote(descripcion)
    conn = get_db_connection()
    descripcion_like = f"%{descripcion.lower()}%"  # Coincidencias parciales e insensibles a mayúsculas
    productos = conn.execute(
        'SELECT * FROM inventario WHERE LOWER(descripcion) LIKE ?', (descripcion_like,)
    ).fetchall()
    conn.close()
    
    if productos:
        return jsonify([dict(row) for row in productos])
    else:
        return jsonify({'message': 'No se encontraron productos con esa descripción'}), 404





if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)
