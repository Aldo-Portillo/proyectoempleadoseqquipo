#!/usr/bin/env bash

set -o errexit

echo "=== Instalando dependencias ==="
pip install -r requirements.txt

echo "=== verificando configuración ==="
echo "DJANGO_SETTINGS_MODULE: ${DJANGO_SETTINGS_MODULE:-No configurado}"
echo "DATABASE_URL: ${DATABASE_URL:-No configurada}"
echo "=== recolectando archivos estaticos ===="
python manage.py collectstatic --noinput

echo "===Aplicando migraciones==="
python manage.py migrate --noinput

echo "=== Build completado exitosamete ==="¿