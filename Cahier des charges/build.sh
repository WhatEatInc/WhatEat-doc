docker run --rm \
    --volume "`pwd`:/data:Z" \
    whateat/pandoc \
    --template template.tex \
    --from markdown \
    --to latex \
    --output "WhatEat - Cahier des charges.pdf" \
    --listings \
    "readme.md"
