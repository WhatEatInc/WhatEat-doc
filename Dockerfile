FROM monodot/pandoc-eisvogel

RUN tlmgr install enumitem
RUN tlmgr install dirtree
RUN tlmgr install tcolorbox
RUN tlmgr install environ
RUN tlmgr install trimspaces

WORKDIR /root/.pandoc/templates/
ADD template.tex .
WORKDIR /data
