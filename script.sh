#!/bin/bash

cd /app/in

echo "Converting images to webp..."

for file in *.{jpg,png}; do cwebp -q 100 "$file" -o "/app/out/${file%.*}.webp"; done

echo "Done!"
