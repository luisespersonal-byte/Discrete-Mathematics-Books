#!/bin/bash
# Script para descargar todos los libros de Matemáticas Discretas en la carpeta descargas

BASE_URL="https://github.com/luisespersonal-byte/Discrete-Mathematics-Books/raw/main"
DEST="descargas"

mkdir -p "$DEST"

for i in $(seq 1 15); do
    echo "Descargando DS${i}.pdf..."
    curl -L -f -o "${DEST}/DS${i}.pdf" "${BASE_URL}/DS${i}.pdf" || { echo "Error al descargar DS${i}.pdf"; exit 1; }
done

echo "¡Descarga completada! Los libros se encuentran en la carpeta '${DEST}'."
