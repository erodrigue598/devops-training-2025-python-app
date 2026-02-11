FROM python:3.6-slim

# Instalar make
RUN apt-get update && apt-get install -y make && apt-get clean

# Copiar requirements
COPY requirements.txt /tmp/requirements.txt

# Instalar dependencias del proyecto + lint
RUN pip install -r /tmp/requirements.txt flake8 mypy
