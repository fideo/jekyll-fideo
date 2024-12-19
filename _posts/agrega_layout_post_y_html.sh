#!/bin/bash

# Ruta del directorio donde están los archivos .md
DIRECTORIO="./wordpress"

# Función recursiva para procesar archivos .md
procesar_directorio() {
  local dir="$1"

  for item in "$dir"/*; do
    if [ -d "$item" ]; then
      # Si es un directorio, procesarlo recursivamente
      procesar_directorio "$item"
    elif [ -f "$item" ] && [[ "$item" == *.md ]]; then
      # Si es un archivo .md, procesarlo

      # Verificar si el archivo contiene un bloque de configuración ---
      if grep -q "^---$" "$item"; then
        # Asegurarse de que 'layout: post' está presente dentro de ---
        if ! awk '/^---$/ {i++} i==1 && /layout: post/ {found=1} END {exit !found}' "$item"; then
          # Agregar 'layout: post' después de la primera línea ---
          sed -i '/^---$/!b;n;/^---$/!i layout: post' "$item"
          echo "Se agregó 'layout: post' en $item"
        fi
      else
        # Si no hay un bloque de configuración, agregar uno
        sed -i '1s/^/---\nlayout: post\n---\n/' "$item"
        echo "Se creó un bloque con 'layout: post' en $item"
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

