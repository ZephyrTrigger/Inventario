document.addEventListener("DOMContentLoaded", async () => {
    obtenerProductos();
    const response = await fetch('/categorias');
    if (response.ok) {
        const categorias = await response.json();
        const dropdown = document.getElementById("buscar_categoria");
        categorias.forEach(categoria => {
            const option = document.createElement("option");
            option.value = categoria;
            option.textContent = categoria;
            dropdown.appendChild(option);
        });
    }
});

// Función para cargar categorías en el desplegable
async function cargarCategorias() {
    try {
        const response = await fetch('/categorias');
        if (response.ok) {
            const categorias = await response.json();
            const dropdown = document.getElementById("buscar_categoria");

            dropdown.innerHTML = `<option value="">Selecciona una categoría</option>`; // Limpia las opciones actuales
            categorias.forEach(categoria => {
                const option = document.createElement("option");
                option.value = categoria;
                option.textContent = categoria;
                dropdown.appendChild(option);
            });
        } else {
            console.error("Error al obtener las categorías");
        }
    } catch (error) {
        console.error("Error:", error);
    }
}

// Obtener todos los productos
async function obtenerProductos() {
    try {
        const response = await fetch('/productos');
        const productos = await response.json();
        const productosBody = document.getElementById('productosBody');
        productosBody.innerHTML = '';
        productos.forEach(producto => {
            const row = `<tr>
                <td>${producto.id}</td>
                <td>${producto.sku}</td>
                <td>${producto.descripcion}</td>
                <td>${producto.cantidad}</td>
                <td>${producto.ubicacion}</td>
                <td>${producto.codigo_barras}</td>
                <td>${producto.costo}</td>
                <td>${producto.categoria}</td>
            </tr>`;
            productosBody.innerHTML += row;
        });
    } catch (error) {
        console.error("Error al obtener los productos:", error);
    }
}

// Agregar producto
async function agregarProducto() {
    const nuevoProducto = {
        sku: document.getElementById("sku").value.trim(),
        descripcion: document.getElementById("descripcion").value,
        cantidad: document.getElementById("cantidad").value,
        ubicacion: document.getElementById("ubicacion").value,
        codigo_barras: document.getElementById("codigo_barras").value,
        costo: parseFloat(document.getElementById("costo").value),
        categoria: document.getElementById("categoria").value
    };

    if (!nuevoProducto.sku || !nuevoProducto.descripcion || !nuevoProducto.cantidad || !nuevoProducto.ubicacion || !nuevoProducto.costo || !nuevoProducto.categoria) {
        alert("Todos los campos son obligatorios.");
        return;
    }

    try {
        const response = await fetch('/producto', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify(nuevoProducto)
        });

        if (response.ok) {
            const data = await response.json();
            alert(`Producto agregado exitosamente. SKU generado: ${data.sku}`);
            obtenerProductos();
            limpiarCampos();
        } else {
            const error = await response.json();
            alert(`Error: ${error.message}`);
        }
    } catch (error) {
        console.error("Error al agregar el producto:", error);
    }
}

// Modificar producto
async function modificarProducto() {
    const id = document.getElementById("buscar_id").value.trim();

    if (!id || isNaN(id)) {
        alert("Por favor ingresa un ID válido para modificar.");
        return;
    }

    const productoModificado = {
        descripcion: document.getElementById("descripcion").value,
        cantidad: document.getElementById("cantidad").value,
        ubicacion: document.getElementById("ubicacion").value,
        codigo_barras: document.getElementById("codigo_barras").value,
        costo: parseFloat(document.getElementById("costo").value),
        categoria: document.getElementById("categoria").value
    };

    try {
        const response = await fetch(`/producto/${id}`, {
            method: 'PUT',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify(productoModificado)
        });

        if (response.ok) {
            alert("Producto modificado exitosamente.");
            obtenerProductos();
            limpiarCampos();
        } else {
            alert("Error al modificar el producto.");
        }
    } catch (error) {
        console.error("Error al modificar el producto:", error);
    }
}

// Eliminar producto
async function eliminarProducto() {
    const id = document.getElementById("buscar_id").value.trim();

    if (!id || isNaN(id)) {
        alert("Por favor ingresa un ID válido para eliminar.");
        return;
    }

    try {
        const response = await fetch(`/producto/${id}`, {
            method: 'DELETE'
        });

        if (response.ok) {
            alert("Producto eliminado exitosamente.");
            obtenerProductos();
            limpiarCampos();
        } else {
            alert("Error al eliminar el producto.");
        }
    } catch (error) {
        console.error("Error al eliminar el producto:", error);
    }
}

// Buscar por descripción
async function buscarPorDescripcion() {
    const descripcion = document.getElementById("descripcion").value.trim();

    if (!descripcion) {
        alert("Por favor ingresa una descripción para buscar.");
        return;
    }

    try {
        const response = await fetch(`/producto/descripcion/${encodeURIComponent(descripcion)}`);
        const productosBody = document.getElementById('productosBody');
        productosBody.innerHTML = '';

        if (response.ok) {
            const productos = await response.json();

            productos.forEach(producto => {
                const row = `
                    <tr>
                        <td>${producto.id}</td>
                        <td>${producto.sku}</td>
                        <td>${producto.descripcion}</td>
                        <td>${producto.cantidad}</td>
                        <td>${producto.ubicacion}</td>
                        <td>${producto.codigo_barras}</td>
                        <td>${producto.costo}</td>
                        <td>${producto.categoria}</td>
                    </tr>`;
                productosBody.innerHTML += row;
            });
        } else {
            productosBody.innerHTML = '<tr><td colspan="8">No se encontraron productos con esa descripción</td></tr>';
        }
    } catch (error) {
        console.error("Error al buscar productos por descripción:", error);
    }
}

// Buscar por SKU
async function buscarPorSKU() {
    const sku = document.getElementById("sku").value.trim();

    if (!sku) {
        alert("Por favor ingresa un SKU para buscar.");
        return;
    }

    try {
        const response = await fetch(`/producto/sku/${encodeURIComponent(sku)}`);
        const productosBody = document.getElementById('productosBody');
        productosBody.innerHTML = '';

        if (response.ok) {
            const producto = await response.json();
            const row = `
                <tr>
                    <td>${producto.id}</td>
                    <td>${producto.sku}</td>
                    <td>${producto.descripcion}</td>
                    <td>${producto.cantidad}</td>
                    <td>${producto.ubicacion}</td>
                    <td>${producto.codigo_barras}</td>
                    <td>${producto.costo}</td>
                    <td>${producto.categoria}</td>
                </tr>`;
            productosBody.innerHTML += row;
        } else {
            productosBody.innerHTML = '<tr><td colspan="8">No se encontró un producto con ese SKU</td></tr>';
        }
    } catch (error) {
        console.error("Error al buscar productos por SKU:", error);
    }
}

// Buscar por código de barras
async function buscarPorCodigoBarras() {
    const codigoBarras = document.getElementById("codigo_barras").value.trim();

    if (!codigoBarras) {
        alert("Por favor ingresa un código de barras para buscar.");
        return;
    }

    try {
        const response = await fetch(`/producto/codigo_barras/${encodeURIComponent(codigoBarras)}`);
        const productosBody = document.getElementById('productosBody');
        productosBody.innerHTML = '';

        if (response.ok) {
            const producto = await response.json();
            const row = `
                <tr>
                    <td>${producto.id}</td>
                    <td>${producto.sku}</td>
                    <td>${producto.descripcion}</td>
                    <td>${producto.cantidad}</td>
                    <td>${producto.ubicacion}</td>
                    <td>${producto.codigo_barras}</td>
                    <td>${producto.costo}</td>
                    <td>${producto.categoria}</td>
                </tr>`;
            productosBody.innerHTML += row;
        } else {
            productosBody.innerHTML = '<tr><td colspan="8">No se encontró un producto con ese código de barras</td></tr>';
        }
    } catch (error) {
        console.error("Error al buscar productos por código de barras:", error);
    }
}

// Buscar por ID
async function buscarPorID() {
    const id = document.getElementById("buscar_id").value.trim();

    if (!id || isNaN(id)) {
        alert("Por favor ingresa un ID válido para buscar.");
        return;
    }

    try {
        const response = await fetch(`/producto/id/${encodeURIComponent(id)}`);
        const productosBody = document.getElementById('productosBody');
        productosBody.innerHTML = '';

        if (response.ok) {
            const producto = await response.json();
            const row = `
                <tr>
                    <td>${producto.id}</td>
                    <td>${producto.sku}</td>
                    <td>${producto.descripcion}</td>
                    <td>${producto.cantidad}</td>
                    <td>${producto.ubicacion}</td>
                    <td>${producto.codigo_barras}</td>
                    <td>${producto.costo}</td>
                    <td>${producto.categoria}</td>
                </tr>`;
            productosBody.innerHTML += row;
        } else {
            productosBody.innerHTML = '<tr><td colspan="8">No se encontró un producto con ese ID</td></tr>';
        }
    } catch (error) {
        console.error("Error al buscar productos por ID:", error);
    }
}

// Exportar a Excel
async function exportarExcel() {
    try {
        const response = await fetch('/exportar_excel');

        if (response.ok) {
            const blob = await response.blob();
            const url = window.URL.createObjectURL(blob);
            const a = document.createElement('a');
            a.href = url;
            a.download = 'inventario.xlsx';
            a.click();
            window.URL.revokeObjectURL(url);
        } else {
            const error = await response.json();
            alert(`Error: ${error.message}`);
        }
    } catch (error) {
        console.error("Error al exportar a Excel:", error);
    }
}

// Limpiar campos
function limpiarCampos() {
    document.querySelectorAll('input').forEach(input => input.value = "");
    document.getElementById("buscar_categoria").value = "";
    document.getElementById("buscar_id").value = "";
}
