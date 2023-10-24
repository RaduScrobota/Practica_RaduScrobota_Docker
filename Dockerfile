# Use Kali Linux as the base image
FROM kalilinux/kali-rolling


# Actualiza la imagen y sus dependencias
RUN apt-get update

# Instala nano para la edición de texto
RUN apt-get install  -y \
    nano \
    nmap \
    pip


# Limpia la memoria caché de instalaciones
RUN apt-get clean

# Instala Python y Jupyter
RUN pip install jupyter



# Configura el usuario root con contraseña de expediente
ENV USER root
ENV PASSWORD 21937899

RUN pip install --upgrade pip

# Expone los puertos 600 y 700
EXPOSE 600
EXPOSE 700

# Ejecuta la línea de comandos al iniciar el contenedor
CMD ["/bin/bash"]
