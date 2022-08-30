docker run --rm \
    --volume "`pwd`:/data:Z" \
    whateat/pandoc \
    --template template.tex \
    --from markdown \
    --to latex \
    --output "WhatEat - Prise en main.pdf" \
    --listings \
    "readme.md"