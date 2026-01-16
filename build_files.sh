#!/bin/bash

echo "🚀 Iniciando Build..."

# Asegurar pip disponible
python3.9 -m ensurepip --default-pip
python3.9 -m pip install --upgrade pip

# Instalar dependencias
echo "📦 Instalando requerimientos..."
python3.9 -m pip install -r requirements.txt

# Crear directorio de estáticos si no existe
echo "📁 Creando directorio staticfiles_build..."
mkdir -p staticfiles_build

# Colectar estáticos
echo "🎨 Colectando archivos estáticos..."
python3.9 manage.py collectstatic --noinput --clear

echo "✅ Build completado!"
