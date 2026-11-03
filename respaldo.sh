#!/bin/bash
# Respalda la carpeta practica en un zip con la fecha en el nombre

# 1. Variables
ORIGEN="practica"
DESTINO="$HOME/respaldos"
FECHA=$(date +%Y-%m-%d_%H-%M)
ARCHIVO="$DESTINO/practica_$FECHA.zip"
MANTENER=3	

echo "Iniciando respaldo de $HOME/$ORIGEN..."

# 2. Revisar que la carpeta a respaldar exista
if [ ! -d "$HOME/$ORIGEN" ]; then
    echo "Error: no existe la carpeta $HOME/$ORIGEN"
    exit 1
fi

# 3. Crear la carpeta de respaldos si no existe
mkdir -p "$DESTINO"

# 4. Hacer el zip
cd "$HOME"
zip -r -q "$ARCHIVO" "$ORIGEN"

# 5. Avisar que terminó
echo "Respaldo creado: $ARCHIVO"
echo "Tamaño del respaldo:"
du -h "$ARCHIVO"

# 6. Borrar respaldos viejos, dejando solo los más recientes
cd "$DESTINO"
ls -t practica_*.zip | tail -n +$((MANTENER + 1)) | xargs -r rm
echo "Se conservan los $MANTENER respaldos más recientes:"
ls -t practica_*.zip
