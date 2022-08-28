docker run --rm \
    --volume "`pwd`:/data:Z" \
    whateat/pandoc \
    --template template.tex \
    --from markdown \
    --to latex \
    --output "WhatEat - Rapport de projet.pdf" \
    --listings \
    readme.md
