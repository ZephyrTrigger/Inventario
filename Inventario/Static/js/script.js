document.addEventListener("DOMContentLoaded", function() {
    obtenerProductos();
});

async function obtenerProductos() {
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
}

function calcularPrecioVenta(costo) {
    const margenMin = 1.10;
    const margenMax = 1.30;
    const precioMin = (costo * margenMin).toFixed(2);
    const precioMax = (costo * margenMax).toFixed(2);
    return `${precioMin} - ${precioMax}`;
}

async function agregarProducto() {
    const nuevoProducto = {
        sku: document.getElementById("sku").value.trim(),
        descripcion: document.getElementById("descripcion").value,
        cantidad: document.getElementById("cantidad").value, // Sin parseInt
        ubicacion: document.getElementById("ubicacion").value,
        codigo_barras: document.getElementById("codigo_barras").value,
        costo: parseFloat(document.getElementById("costo").value),
        categoria: document.getElementById("categoria").value
    };

    const response = await fetch('/producto', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify(nuevoProducto)
    });

    if (response.ok) {
        const data = await response.json();
        alert("Producto agregado exitosamente. SKU generado: " + data.sku);
        document.getElementById("sku").value = data.sku;
        obtenerProductos();
        limpiarCampos();
    } else {
        alert("Error al agregar el producto.");
    }
}

async function modificarProducto() {
    const id = parseInt(document.getElementById("buscar_id").value);

    if (!id) {
        alert("Por favor ingresa un ID válido para modificar.");
        return;
    }

    const productoModificado = {
        descripcion: document.getElementById("descripcion").value,
        cantidad: document.getElementById("cantidad").value, // Sin parseInt
        ubicacion: document.getElementById("ubicacion").value,
        codigo_barras: document.getElementById("codigo_barras").value,
        costo: parseFloat(document.getElementById("costo").value),
        categoria: document.getElementById("categoria").value
    };

    const response = await fetch(`/producto/${id}`, {
        method: 'PUT',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify(productoModificado)
    });

    if (response.ok) {
        alert("Producto modificado exitosamente.");
        obtenerProductos();
        limpiarCampos();
    } else {
        alert("Error al modificar el producto.");
    }
}

async function eliminarProducto() {
    const id = parseInt(document.getElementById("buscar_id").value);

    if (!id) {
        alert("Por favor ingresa un ID válido para eliminar.");
        return;
    }

    const response = await fetch(`/producto/${id}`, { method: 'DELETE' });

    if (response.ok) {
        alert("Producto eliminado exitosamente.");
        obtenerProductos();
        limpiarCampos();
    } else {
        alert("Error al eliminar el producto.");
    }
}

async function buscarPorSKU() {
    const sku = document.getElementById("sku").value.trim();

    if (!sku) {
        alert("Por favor ingresa un SKU para buscar.");
        return;
    }

    const response = await fetch(`/producto/sku/${encodeURIComponent(sku)}`);
    if (response.ok) {
        const producto = await response.json();
        cargarDatosProducto(producto);
    } else {
        alert("Producto no encontrado.");
    }
}

async function buscarPorCodigoBarras() {
    const codigo_barras = document.getElementById("codigo_barras").value.trim();

    if (!codigo_barras) {
        alert("Por favor ingresa un Código de Barras para buscar.");
        return;
    }

    const response = await fetch(`/producto/codigo_barras/${encodeURIComponent(codigo_barras)}`);
    if (response.ok) {
        const producto = await response.json();
        cargarDatosProducto(producto);
    } else {
        alert("Producto no encontrado.");
    }
}

async function buscarPorID() {
    const id = document.getElementById("buscar_id").value.trim();

    if (!id || isNaN(id)) {
        alert("Por favor ingresa un ID válido para buscar.");
        return;
    }

    const response = await fetch(`/producto/id/${encodeURIComponent(id)}`);
    if (response.ok) {
        const producto = await response.json();
        cargarDatosProducto(producto);
    } else {
        alert("Producto no encontrado.");
    }
}

function cargarDatosProducto(producto) {
    document.getElementById("sku").value = producto.sku;
    document.getElementById("descripcion").value = producto.descripcion;
    document.getElementById("cantidad").value = producto.cantidad;
    document.getElementById("ubicacion").value = producto.ubicacion;
    document.getElementById("codigo_barras").value = producto.codigo_barras;
    document.getElementById("costo").value = producto.costo;
    document.getElementById("categoria").value = producto.categoria;
}

function exportarExcel() {
    window.location.href = '/exportar_excel';
}

async function importarExcel() {
    const fileInput = document.getElementById("file");
    const formData = new FormData();

    if (fileInput.files.length === 0) {
        alert("Por favor, selecciona un archivo Excel para importar.");
        return;
    }

    formData.append("file", fileInput.files[0]);

    const response = await fetch('/importar_excel', {
        method: 'POST',
        body: formData
    });

    if (response.ok) {
        alert("Inventario importado y base de datos actualizada correctamente.");
        obtenerProductos(); // Actualiza la lista de productos después de la importación
    } else {
        const error = await response.json();
        alert("Error al importar el archivo: " + error.message);
    }
}


function limpiarCampos() {
    document.getElementById("sku").value = "";
    document.getElementById("descripcion").value = "";
    document.getElementById("cantidad").value = "";
    document.getElementById("ubicacion").value = "";
    document.getElementById("codigo_barras").value = "";
    document.getElementById("costo").value = "";
    document.getElementById("categoria").value = "";
    document.getElementById("buscar_id").value = "";
}
