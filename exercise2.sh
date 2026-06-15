#!/bin/bash

# Definición de la zona horaria (Ecuador Continental UTC-5)
export TZ="America/Guayaquil"

# Definición de la variable de puntuación inicial
PUNTUACION=100

# Iteración sobre todos los archivos actualmente rastreados en el repositorio
for ARCHIVO in $(git ls-files); do

    # Validación de existencia para evitar errores si un archivo fue eliminado temporalmente
    if [ ! -f "$ARCHIVO" ]; then
        continue
    fi

    # Extracción del metadato del último commit que afectó a este archivo: Hora (00-23) | Día (1-7)
    FECHA_ARCHIVO=$(git log -1 --date=format:"%H|%u" --format="%ad" -- "$ARCHIVO")

    # Si el archivo tiene un historial, se extraen sus variables temporales
    if [ -n "$FECHA_ARCHIVO" ]; then
        HORA=$(echo "$FECHA_ARCHIVO" | cut -d'|' -f1)
        DIA=$(echo "$FECHA_ARCHIVO" | cut -d'|' -f2)

        # Definición de conversión matemática a Base 10
        HORA_NUM=$((10#$HORA))

        # Definición de Penalización 1: Última modificación en día no autorizado (Lunes=1, Miércoles=3)
        if [ "$DIA" -ne 1 ] && [ "$DIA" -ne 3 ]; then
            PUNTUACION=$((PUNTUACION - 2))
        fi

        # Definición de Penalización 2: Fuera de franja horaria ecuatoriana (07:00 a 13:00)
        if [ "$HORA_NUM" -lt 7 ] || [ "$HORA_NUM" -gt 13 ]; then
            PUNTUACION=$((PUNTUACION - 2))
        fi
    fi

    # Definición de Penalización 3 y 4: Análisis de calidad e idioma directamente en el contenido del archivo
    # Deduce puntos si encuentra caracteres del español en el texto del archivo
    if grep -iqE '[áéíóúñ¿¡]' "$ARCHIVO"; then
         PUNTUACION=$((PUNTUACION - 5))
    # Deduce puntos si el archivo no contiene palabras comunes o técnicas del inglés
    elif ! grep -iqE '\b(add|fix|update|feat|remove|refactor|doc|test|the|to|and|in|of|for|with)\b' "$ARCHIVO"; then
         PUNTUACION=$((PUNTUACION - 2))
    fi

done

# Definición del Límite Lógico Inferior (prevenir valores negativos por exceso de archivos)
if [ "$PUNTUACION" -lt 0 ]; then
    PUNTUACION=0
fi

# Definición de la salida estándar del programa
echo "Calificacion final basada en archivos (Horario Ecuador, Lun/Mie, Ingles): $PUNTUACION/100"