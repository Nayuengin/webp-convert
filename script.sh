#!/bin/bash

cd /app/in

SUPPORTED_FORMATS="jpg,jpeg,png,tiff,gif,bmp,yuv,jfif"

IFS=',' read -ra FORMATS <<< "$SUPPORTED_FORMATS"

echo "Converting images to webp..."

for format in "${FORMATS[@]}"; do
    for file in *.$format; do
        if [[ -f "$file" ]]; then
            cwebp -q 100 "$file" -o "/app/out/${file%.*}.webp"
            rm "$file"
        fi
    done
done

echo "Done!"
