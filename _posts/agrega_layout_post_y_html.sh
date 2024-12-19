#!/bin/bash

# Ruta del directorio donde están los archivos .md
DIRECTORIO="./wordpress/"

# Función recursiva para procesar archivos .md
procesar_directorio() {
  local dir="$1"

  for item in "$dir"/*; do
    if [ -d "$item" ]; then
      # Si es un directorio, procesarlo recursivamente
      procesar_directorio "$item"
    elif [ -f "$item" ] && [[ "$item" == *.md ]]; then
      # Si es un archivo .md, procesarlo

      # Agregar layout: post dentro de ---
      if ! grep -q "layout: post" "$item"; then
        sed -i '1s/^/---\nlayout: post\n---\n/' "$item"
        echo "Se agregó 'layout: post' en $item"
      fi

      # Modificar el valor de permalink: para agregar .html
      if grep -q "^permalink:" "$item"; then
        sed -i -E 's|^(permalink:.*[^/])$|\1.html|' "$item"
        echo "Se modificó el permalink en $item"
      fi
    fi
  done
}

# Llamar a la función inicial con el directorio raíz
procesar_directorio "$DIRECTORIO"
