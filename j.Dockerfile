FROM maven:3.8.6-openjdk-11-slim 
# Instalar make y otras herramientas necesarias
 RUN apt-get update && \
 apt-get install -y make && \
 apt-get clean
 # Directorio de trabajo
 WORKDIR /app
