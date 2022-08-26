docker run --rm \
    --volume "`pwd`:/data:Z" \
    monodot/pandoc-eisvogel \
    --template eisvogel \
    --from markdown \
    --to latex \
    --output "WhatEat - Rapport de projet.pdf" \
    --listings \
    readme.md
