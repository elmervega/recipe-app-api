FROM python:3.7-alpine

ENV PYTHONUNBUFFERED 1

# Realizamos una copia de lo requerimientos y lo pegamos en la siguiente seccion
COPY ./requirements.txt /requirements.txt
# Luego installamos estos
RUN pip install -r /requirements.txt

# Creamos una carpeta que se llamara app
RUN mkdir /app
# Luego se cambia de directorio hacia este 
WORKDIR /app
# Copia esta carpeta y en este directorio
COPY ./app /app

# Creamos el nuevo user 
RUN adduser -D user
USER user