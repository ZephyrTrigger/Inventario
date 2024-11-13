import sqlite3

# Ruta a la base de datos SQLite
db_path = 'C:/Users/Martin Prieto/Documents/Mis Programas/Inventario/inventario.db'

# SQL para modificar la estructura de la tabla
update_sql = """
PRAGMA foreign_keys=off;

-- Crear una nueva tabla con la estructura deseada
CREATE TABLE IF NOT EXISTS inventario_new (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sku TEXT,
    descripcion TEXT,
    cantidad TEXT,  -- Cambiado a TEXT para aceptar números y texto
    ubicacion TEXT,
    codigo_barras TEXT,
    costo REAL,
    categoria TEXT
);

-- Copiar los datos de la tabla antigua a la nueva
INSERT INTO inventario_new (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria)
SELECT id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria FROM inventario;

-- Eliminar la tabla antigua y renombrar la nueva
DROP TABLE IF EXISTS inventario;
ALTER TABLE inventario_new RENAME TO inventario;

PRAGMA foreign_keys=on;
"""

# Conectar a la base de datos y ejecutar el script de actualización
try:
    conn = sqlite3.connect(db_path)
    cursor = conn.cursor()
    cursor.executescript(update_sql)
    conn.commit()
    print("La tabla 'inventario' ha sido actualizada exitosamente.")
except Exception as e:
    print("Error al actualizar la tabla:", e)
finally:
    conn.close()
