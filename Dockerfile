FROM monodot/pandoc-eisvogel

RUN tlmgr install enumitem

WORKDIR /root/.pandoc/templates/
ADD template.tex .
WORKDIR /data
