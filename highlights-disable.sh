#!/usr/bin/env bash
# Comments out the highlights block in both cas-dc-template.tex and Sectioned/main.tex

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
FILES=(
    "$SCRIPT_DIR/cas-dc-template.tex"
    "$SCRIPT_DIR/Sectioned/main.tex"
)

for FILE in "${FILES[@]}"; do
    sed -i \
        -e 's/^\\begin{highlights}/%\\begin{highlights}/' \
        -e 's/^    \\item Research highlights item /%    \\item Research highlights item /' \
        -e 's/^\\end{highlights}/%\\end{highlights}/' \
        "$FILE"
    echo "Highlights disabled in: $FILE"
done
