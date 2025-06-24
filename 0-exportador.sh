#!/bin/bash
mkdir -p pdf

for f in *.ly; do
    id=$(grep -m1 'define output-id' "$f" | sed -E 's/.*"([^"]+)".*/\1/')
    if [[ -n "$id" ]]; then
        echo "✅ Compilando $f → pdf/$id.pdf"
        lilypond -o "pdf/$id" "$f" > /dev/null 2>&1
    else
        echo "⚠️  No se encontró output-id en $f"
    fi
done

# Limpieza de archivos MIDI
echo "🧹 Eliminando archivos .midi generados..."
rm -f pdf/*.midi