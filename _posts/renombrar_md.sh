#!/bin/bash

# Ruta del directorio raíz donde buscar los archivos .md
DIRECTORIO="./wordpress"

# Función para procesar archivos recursivamente
procesar_archivos() {
  local dir="$1"

  # Recorrer todos los archivos y subdirectorios
  for item in "$dir"/*; do
    if [[ -d "$item" ]]; then
      # Si es un directorio, llamar a la función recursivamente
      procesar_archivos "$item"
    elif [[ -f "$item" && "$item" == *.md ]]; then
      # Si es un archivo .md, procesarlo
      local fecha=$(grep -oP "date: '\K[0-9]{4}-[0-9]{2}-[0-9]{2}" "$item")

      if [[ -n $fecha ]]; then
        # Obtener el nombre base del archivo sin la ruta
        local nombre_base=$(basename "$item")

        # Crear el nuevo nombre
        local nuevo_nombre="${fecha}-${nombre_base}"

        # Renombrar el archivo
        local nuevo_path=$(dirname "$item")/"$nuevo_nombre"
        mv "$item" "$nuevo_path"
        echo "Renombrado: $nombre_base -> $nuevo_nombre"
      else
        echo "No se encontró fecha en: $item"
      fi
    fi
  done
}

# Llamar a la función inicial con el directorio raíz
procesar_archivos "$DIRECTORIO"