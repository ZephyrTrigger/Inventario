# Usa una imagen de Python como base
FROM python:3.9

# Configura el directorio de trabajo en el contenedor
WORKDIR /app

# Copia los archivos de la aplicación al contenedor
COPY . /app

# Instala las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Expone el puerto en el que correrá la aplicación Flask
EXPOSE 8080

# Establece el archivo de la aplicación principal de Flask
ENV FLASK_APP=inventario2.py

# Define el comando de inicio para ejecutar la aplicación Flask
CMD ["flask", "run", "--host=0.0.0.0", "--port=8080"]
