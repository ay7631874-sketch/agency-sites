#!/bin/bash
urls=(
  "https://images.unsplash.com/photo-1631452180519-c014fe946bc7?w=1920&q=85"
  "https://images.unsplash.com/photo-1565557623262-b51c2513a641?w=1920&q=85"
  "https://images.unsplash.com/photo-1588166524941-3bf61a9c41db?w=1920&q=85"
  "https://images.unsplash.com/photo-1567337710282-00832b415979?w=1920&q=85"
  "https://images.unsplash.com/photo-1596797038530-2c107229654b?w=1920&q=85"
)

for i in 0 1 2 3 4; do
  echo "Downloading scene$i..."
  curl -sL -A "Mozilla/5.0" "${urls[$i]}" -o "/c/tmp/agency-clone/chulhewala-world/assets/scene${i}.jpg"
  if [ -f "/c/tmp/agency-clone/chulhewala-world/assets/scene${i}.jpg" ]; then
    size=$(stat -c%s "/c/tmp/agency-clone/chulhewala-world/assets/scene${i}.jpg")
    echo "scene${i}.jpg downloaded: $size bytes"
  else
    echo "FAILED: scene${i}.jpg"
  fi
done