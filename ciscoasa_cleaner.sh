#!/bin/bash
tail -Fn0 /home/soc/tpotce/data/ciscoasa/log/ciscoasa.log | while read line; do
  # Paso 1: Reemplazar las comillas dobles por un carácter temporal (|).
  temp_line=$(echo "$line" | sed 's/"/|/g')
  
  # Paso 2: Reemplazar las comillas simples por comillas dobles.
  temp_line=$(echo "$temp_line" | sed "s/'/\"/g")
# Escribir la línea limpia en el archivo de logs
  echo "$temp_line" >> /home/soc/tpotce/data/ciscoasa/log/ciscoasa_clean.log
done
