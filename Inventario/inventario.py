import tkinter as tk
from tkinter import messagebox, ttk, filedialog
import sqlite3
import random
import pandas as pd
from flask import Flask, render_template, request

# Crear o conectar a la base de datos
conn = sqlite3.connect('inventario.db')
cursor = conn.cursor()


# Conectar a la base de datos
conn = sqlite3.connect('inventario.db')
cursor = conn.cursor()

# Crear una nueva tabla sin restricciones de unicidad en 'sku' y 'codigo_barras'
cursor.execute("PRAGMA foreign_keys=off;")  # Desactiva claves foráneas temporalmente

cursor.execute('''
    CREATE TABLE IF NOT EXISTS inventario_nueva (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        sku TEXT,
        descripcion TEXT,
        cantidad INTEGER,
        ubicacion TEXT,
        codigo_barras TEXT,
        costo REAL,
        categoria TEXT
    )
''')

# Copiar todos los datos de la tabla original a la nueva
cursor.execute('''
    INSERT INTO inventario_nueva (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria)
    SELECT id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria
    FROM inventario
''')

# Eliminar la tabla antigua y renombrar la nueva
cursor.execute("DROP TABLE inventario")
cursor.execute("ALTER TABLE inventario_nueva RENAME TO inventario")

conn.commit()
cursor.execute("PRAGMA foreign_keys=on;")  # Reactiva las claves foráneas

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/run_program', methods=['POST'])
def run_program():
    # Aquí se ejecuta tu programa de Python y se devuelve el resultado
    # por ejemplo, podría ser un cálculo o función.
    resultado = "Hola, mundo!"  # Simula tu programa aquí
    return {"resultado": resultado}

if __name__ == '__main__':
    app.run(debug=True)


# Funciones
def generar_sku_automatico():
    """Genera un SKU único automáticamente."""
    while True:
        sku = f'PROD-{random.randint(1000, 9999)}'
        cursor.execute("SELECT sku FROM inventario WHERE sku = ?", (sku,))
        if not cursor.fetchone():
            return sku

def calcular_precio_venta(costo):
    """Calcula un precio de venta sugerido basado en el costo."""
    try:
        costo = float(costo)
    except ValueError:
        return "Error: Costo inválido"

    margen_min = 1.10  # 10%
    margen_max = 1.30  # 30%
    precio_venta_min = round(costo * margen_min, 2)
    precio_venta_max = round(costo * margen_max, 2)
    return f'{precio_venta_min} - {precio_venta_max}'

def agregar_producto():
    sku = sku_entry.get()
    descripcion = descripcion_entry.get()
    cantidad = cantidad_entry.get()
    ubicacion = ubicacion_entry.get()
    codigo_barras = codigo_barras_entry.get()
    costo = costo_entry.get()
    categoria = categoria_entry.get()

    try:
        cantidad = int(cantidad)
        costo = float(costo)
    except ValueError:
        messagebox.showerror("Error", "Cantidad y costo deben ser números válidos.")
        return

    # Insertar el producto sin verificar unicidad en 'sku' o 'codigo_barras'
    if descripcion and cantidad and ubicacion and codigo_barras and costo and categoria:
        cursor.execute("INSERT INTO inventario (sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) VALUES (?, ?, ?, ?, ?, ?, ?)", 
                       (sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria))
        conn.commit()
        messagebox.showinfo("Éxito", "Producto agregado correctamente")
        limpiar_campos()
        actualizar_lista()
    else:
        messagebox.showerror("Error", "Por favor completa todos los campos.")

def modificar_producto():
    global selected_id
    if selected_id is None:
        messagebox.showerror("Error", "Por favor selecciona un producto para modificar.")
        return

    descripcion = descripcion_entry.get()
    cantidad = cantidad_entry.get()
    ubicacion = ubicacion_entry.get()
    codigo_barras = codigo_barras_entry.get()
    costo = costo_entry.get()
    categoria = categoria_entry.get()

    try:
        cantidad = int(cantidad)
        costo = float(costo)
    except ValueError:
        messagebox.showerror("Error", "Cantidad y costo deben ser números válidos.")
        return

    if descripcion and cantidad and ubicacion and codigo_barras and costo and categoria:
        cursor.execute("UPDATE inventario SET descripcion = ?, cantidad = ?, ubicacion = ?, codigo_barras = ?, costo = ?, categoria = ? WHERE id = ?", 
                       (descripcion, cantidad, ubicacion, codigo_barras, costo, categoria, selected_id))
        conn.commit()
        messagebox.showinfo("Éxito", "Producto modificado correctamente")
        limpiar_campos()
        actualizar_lista()
        selected_id = None
    else:
        messagebox.showerror("Error", "Por favor completa todos los campos.")


def eliminar_producto():
    global selected_id
    if selected_id is None:
        messagebox.showerror("Error", "Por favor selecciona un producto para eliminar.")
        return

    cursor.execute("DELETE FROM inventario WHERE id = ?", (selected_id,))
    conn.commit()
    messagebox.showinfo("Éxito", "Producto eliminado correctamente")
    limpiar_campos()
    actualizar_lista()
    selected_id = None


def limpiar_campos():
    sku_entry.delete(0, tk.END)
    descripcion_entry.delete(0, tk.END)
    cantidad_entry.delete(0, tk.END)
    ubicacion_entry.delete(0, tk.END)
    codigo_barras_entry.delete(0, tk.END)
    costo_entry.delete(0, tk.END)
    categoria_entry.delete(0, tk.END)

def actualizar_lista():
    lista_productos.delete(*lista_productos.get_children())
    cursor.execute("SELECT id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria FROM inventario")
    for fila in cursor.fetchall():
        precio_venta = calcular_precio_venta(fila[6])  # Calcular precio de venta basado en el costo
        lista_productos.insert("", tk.END, text=fila[0], values=(fila[1], fila[2], fila[3], fila[4], fila[5], fila[6], fila[7], precio_venta))



def buscar_por_sku():
    sku = sku_entry.get()
    if sku:
        cursor.execute("SELECT descripcion, cantidad, ubicacion, codigo_barras, costo, categoria FROM inventario WHERE sku = ?", (sku,))
        resultado = cursor.fetchone()
        if resultado:
            descripcion_entry.delete(0, tk.END)
            cantidad_entry.delete(0, tk.END)
            ubicacion_entry.delete(0, tk.END)
            codigo_barras_entry.delete(0, tk.END)
            costo_entry.delete(0, tk.END)
            categoria_entry.delete(0, tk.END)

            descripcion_entry.insert(0, resultado[0])
            cantidad_entry.insert(0, resultado[1])
            ubicacion_entry.insert(0, resultado[2])
            codigo_barras_entry.insert(0, resultado[3])
            costo_entry.insert(0, resultado[4])
            categoria_entry.insert(0, resultado[5])
        else:
            messagebox.showerror("Error", "No se encontró ningún producto con ese SKU.")
    else:
        messagebox.showerror("Error", "Por favor ingresa un SKU para buscar.")

 
def buscar_por_codigo_barras():
    codigo_barras = codigo_barras_entry.get()
    if codigo_barras:
        cursor.execute("SELECT sku, descripcion, cantidad, ubicacion, costo, categoria FROM inventario WHERE codigo_barras = ?", (codigo_barras,))
        resultado = cursor.fetchone()
        if resultado:
            sku_entry.delete(0, tk.END)
            descripcion_entry.delete(0, tk.END)
            cantidad_entry.delete(0, tk.END)
            ubicacion_entry.delete(0, tk.END)
            codigo_barras_entry.delete(0, tk.END)
            costo_entry.delete(0, tk.END)
            categoria_entry.delete(0, tk.END)

            sku_entry.insert(0, resultado[0])
            descripcion_entry.insert(0, resultado[1])
            cantidad_entry.insert(0, resultado[2])
            ubicacion_entry.insert(0, resultado[3])
            costo_entry.insert(0, resultado[4])
            categoria_entry.insert(0, resultado[5])
        else:
            nuevo_sku = generar_sku_automatico()
            sku_entry.delete(0, tk.END)
            sku_entry.insert(0, nuevo_sku)
            messagebox.showinfo("Nuevo SKU", f"Se generó un SKU automáticamente: {nuevo_sku}")
    else:
        messagebox.showerror("Error", "Por favor ingresa un código de barras para buscar.")

# Variable global para almacenar el id del producto seleccionado
selected_id = None

def on_treeview_select(event):
    global selected_id
    selected_item = lista_productos.selection()
    if selected_item:
        item_values = lista_productos.item(selected_item, 'values')
        selected_id = lista_productos.item(selected_item, 'text')  # Almacena el 'id' del registro
        sku_entry.delete(0, tk.END)
        descripcion_entry.delete(0, tk.END)
        cantidad_entry.delete(0, tk.END)
        ubicacion_entry.delete(0, tk.END)
        codigo_barras_entry.delete(0, tk.END)
        costo_entry.delete(0, tk.END)
        categoria_entry.delete(0, tk.END)
        
        sku_entry.insert(0, item_values[0])
        descripcion_entry.insert(0, item_values[1])
        cantidad_entry.insert(0, item_values[2])
        ubicacion_entry.insert(0, item_values[3])
        codigo_barras_entry.insert(0, item_values[4])
        costo_entry.insert(0, item_values[5])
        categoria_entry.insert(0, item_values[6])


def exportar_a_excel():
    cursor.execute("SELECT sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria FROM inventario")
    productos = cursor.fetchall()
    df = pd.DataFrame(productos, columns=['SKU', 'Descripción', 'Cantidad', 'Ubicación', 'Código de Barras', 'Costo', 'Categoría'])
    df['Precio Venta'] = df['Costo'].apply(lambda x: calcular_precio_venta(x))
    df.to_excel('inventario_exportado.xlsx', index=False)
    messagebox.showinfo("Éxito", "Inventario exportado a inventario_exportado.xlsx")

def importar_desde_excel():
    file_path = filedialog.askopenfilename(filetypes=[("Excel files", "*.xlsx *.xls")])
    if file_path:
        try:
            df = pd.read_excel(file_path)
            replace_data = messagebox.askyesno("Actualizar datos", "¿Deseas reemplazar todos los datos actuales?")
            if replace_data:
                cursor.execute("DELETE FROM inventario")
            for _, row in df.iterrows():
                cursor.execute("INSERT OR REPLACE INTO inventario (sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) VALUES (?, ?, ?, ?, ?, ?, ?)", 
                               (row['SKU'], row['Descripción'], row['Cantidad'], row['Ubicación'], row['Código de Barras'], row['Costo'], row['Categoría']))
            conn.commit()
            actualizar_lista()
            messagebox.showinfo("Éxito", f"Inventario importado correctamente desde {file_path}")
        except Exception as e:
            messagebox.showerror("Error", f"No se pudo importar el archivo: {str(e)}")

# Interfaz gráfica
root = tk.Tk()
root.title("Sistema de Inventario")
root.geometry("900x650")
root.config(bg="#e6f2ff")
root.minsize(900, 650)

# Estilos de ttk
style = ttk.Style()
style.theme_use("clam")
style.configure("TLabel", background="#e6f2ff", font=("Arial", 10))
style.configure("TEntry", padding=5, font=("Arial", 10))
style.configure("TButton", background="#0052cc", foreground="white", font=("Arial", 10, "bold"))
style.map("TButton", background=[('active', '#003d99')])

# Etiquetas y entradas
ttk.Label(root, text="SKU:").grid(row=0, column=0, padx=10, pady=10, sticky="w")
sku_entry = ttk.Entry(root)
sku_entry.grid(row=0, column=1, padx=10, pady=10, sticky="ew")

ttk.Label(root, text="Descripción:").grid(row=1, column=0, padx=10, pady=10, sticky="w")
descripcion_entry = ttk.Entry(root)
descripcion_entry.grid(row=1, column=1, padx=10, pady=10, sticky="ew")

ttk.Label(root, text="Cantidad:").grid(row=2, column=0, padx=10, pady=10, sticky="w")
cantidad_entry = ttk.Entry(root)
cantidad_entry.grid(row=2, column=1, padx=10, pady=10, sticky="ew")

ttk.Label(root, text="Ubicación:").grid(row=3, column=0, padx=10, pady=10, sticky="w")
ubicacion_entry = ttk.Entry(root)
ubicacion_entry.grid(row=3, column=1, padx=10, pady=10, sticky="ew")

ttk.Label(root, text="Código de Barras:").grid(row=4, column=0, padx=10, pady=10, sticky="w")
codigo_barras_entry = ttk.Entry(root)
codigo_barras_entry.grid(row=4, column=1, padx=10, pady=10, sticky="ew")

ttk.Label(root, text="Costo (CLP):").grid(row=5, column=0, padx=10, pady=10, sticky="w")
costo_entry = ttk.Entry(root)
costo_entry.grid(row=5, column=1, padx=10, pady=10, sticky="ew")

ttk.Label(root, text="Categoría:").grid(row=6, column=0, padx=10, pady=10, sticky="w")
categoria_entry = ttk.Entry(root)
categoria_entry.grid(row=6, column=1, padx=10, pady=10, sticky="ew")

# Botones de acción principales
ttk.Button(root, text="Agregar Producto", command=agregar_producto).grid(row=7, column=0, padx=10, pady=10)
ttk.Button(root, text="Modificar Producto", command=modificar_producto).grid(row=7, column=1, padx=10, pady=10)
ttk.Button(root, text="Eliminar Producto", command=eliminar_producto).grid(row=7, column=2, padx=10, pady=10)
ttk.Button(root, text="Limpiar", command=limpiar_campos).grid(row=7, column=3, padx=10, pady=10)

# Botones de importación y exportación
ttk.Button(root, text="Importar desde Excel", command=importar_desde_excel).grid(row=8, column=0, padx=10, pady=10)
ttk.Button(root, text="Exportar a Excel", command=exportar_a_excel).grid(row=8, column=1, padx=10, pady=10)

# Botones de búsqueda
ttk.Button(root, text="Buscar por SKU", command=buscar_por_sku).grid(row=0, column=2, padx=10, pady=10)
ttk.Button(root, text="Buscar por Código de Barras", command=buscar_por_codigo_barras).grid(row=4, column=2, padx=10, pady=10)

# Lista de productos
columns = ('SKU', 'Descripción', 'Cantidad', 'Ubicación', 'Código de Barras', 'Costo', 'Categoría', 'Precio de Venta')
lista_productos = ttk.Treeview(root, columns=columns, show='headings')
for col in columns:
    lista_productos.heading(col, text=col)
    lista_productos.column(col, anchor='center')
lista_productos.grid(row=9, column=0, columnspan=4, padx=10, pady=10, sticky="nsew")

# Asociar evento de selección a la función on_treeview_select
lista_productos.bind('<<TreeviewSelect>>', on_treeview_select)

# Inicializar lista
actualizar_lista()

# Ejecutar la aplicación
root.mainloop() 

# Cerrar la conexión
conn.close()
