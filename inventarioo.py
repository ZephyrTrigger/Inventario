from flask import Flask, render_template, request, jsonify, send_file
import pymysql
import pandas as pd
import random
import os
from datetime import datetime
from urllib.parse import unquote

app = Flask(__name__)
UPLOAD_FOLDER = 'uploads'
os.makedirs(UPLOAD_FOLDER, exist_ok=True)

# Configuración de conexión MySQL
MYSQL_HOST = 'localhost'  # Cambia a la dirección proporcionada por Hostinger si no es localhost
MYSQL_USER = 'u462733512_ZephyrTrigger'
MYSQL_PASSWORD = 'ZephyrValak160#'  # Reemplaza con la contraseña real
MYSQL_DB = 'u462733512_inventario'

# Función para conectar a la base de datos MySQL
def get_db_connection():
    conn = pymysql.connect(
        host=MYSQL_HOST,
        user=MYSQL_USER,
        password=MYSQL_PASSWORD,
        database=MYSQL_DB,
        cursorclass=pymysql.cursors.DictCursor
    )
    return conn

# Ruta principal para renderizar la página
@app.route('/')
def index():
    return render_template('index.html')

# Ruta para exportar los datos a un archivo Excel
@app.route('/exportar_excel', methods=['GET'])
def exportar_excel():
    conn = get_db_connection()
    with conn.cursor() as cursor:
        cursor.execute('SELECT * FROM inventario')
        productos = cursor.fetchall()
    conn.close()
    
    # Convertir los datos a un DataFrame de pandas
    df = pd.DataFrame(productos)
    
    # Guardar el DataFrame en un archivo Excel con nombre único
    filename = f"export_{datetime.now().strftime('%Y%m%d_%H%M%S')}.xlsx"
    file_path = os.path.join(UPLOAD_FOLDER, filename)
    df.to_excel(file_path, index=False)
    
    # Enviar el archivo Excel al usuario
    return send_file(file_path, as_attachment=True)

# Ruta para importar datos desde un archivo Excel
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
    columnas_esperadas = {'id', 'sku', 'descripcion', 'cantidad', 'ubicacion', 'codigo_barras', 'costo', 'categoria'}
    if not columnas_esperadas.issubset(df.columns):
        return jsonify({'message': 'El archivo Excel no tiene las columnas requeridas.'}), 400

    conn = get_db_connection()
    try:
        with conn.cursor() as cursor:
            # Limpiar la tabla antes de importar nuevos datos
            cursor.execute('DELETE FROM inventario')
            conn.commit()
            
            # Insertar los datos del DataFrame en la tabla
            for _, row in df.iterrows():
                cursor.execute(
                    'INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) VALUES (%s, %s, %s, %s, %s, %s, %s, %s)',
                    (row['id'], row['sku'], row['descripcion'], row['cantidad'], row['ubicacion'], row['codigo_barras'], row['costo'], row['categoria'])
                )
            conn.commit()
    except Exception as e:
        conn.rollback()
        return jsonify({'message': f'Error al actualizar la base de datos: {str(e)}'}), 500
    finally:
        conn.close()
        os.remove(file_path)  # Eliminar el archivo Excel subido para limpieza

    return jsonify({'message': 'Inventario importado y base de datos actualizada correctamente'}), 200

# El resto de tus rutas (agregar, modificar, eliminar, buscar) permanecen igual,
# pero ahora utilizan la función `get_db_connection()` para conectarse a MySQL.
