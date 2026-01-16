#!/bin/bash

echo "🚀 Iniciando Build..."

# Asegurar pip disponible
python3.9 -m ensurepip 2>/dev/null || true
python3.9 -m pip install --upgrade pip

# Instalar dependencias
echo "📦 Instalando requerimientos..."
python3.9 -m pip install -r requirements.txt

# Colectar estáticos
echo "🎨 Colectando archivos estáticos..."
python3.9 manage.py collectstatic --noinput --clear

echo "✅ Build completado!"
