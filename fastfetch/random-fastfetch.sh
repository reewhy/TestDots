IMAGE_DIR="$HOME/Pictures/fastfetch-images"  # Change this path
RANDOM_IMAGE=$(find "$IMAGE_DIR" -type f \( -name "*.png" -o -name "*.jpg" -o -name "*.jpeg" -o -name "*.gif" -o -name "*.webp" \) | shuf -n 1)

if [ -n "$RANDOM_IMAGE" ]; then
    fastfetch --logo "$RANDOM_IMAGE" --key-padding-left 5
else
    fastfetch --key-padding-left 5
fi
