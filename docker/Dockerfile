# Dockerfile for building papers
FROM pandoc/core:latest

RUN apk update && \
    apk add biber \
    texlive \
    biblatex \
    texmf-dist-bibtexextra \
    texmf-dist-latexextra \
    texmf-dist-science \
    texmf-dist-pictures \
    texmf-dist-formatsextra \
    make

WORKDIR /files

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
