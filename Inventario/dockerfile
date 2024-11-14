# Usa una imagen base de Python
FROM python:3.9-slim

# Configura el directorio de trabajo
WORKDIR /app

# Copia los archivos necesarios para la aplicación
COPY . /app

# Instala las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Exponer el puerto que usará la aplicación
EXPOSE 8080

# Comando para ejecutar la aplicación Flask
CMD ["flask", "run", "--host=0.0.0.0", "--port=8080"]
