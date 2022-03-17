# Dockerfile for building papers
FROM pandoc/core:latest

COPY ./entrypoint.sh /entrypoint.sh

WORKDIR /files

RUN apk update

RUN apk add biber \
    texlive \
    biblatex \
    texmf-dist-bibtexextra \
    texmf-dist-latexextra \
    texmf-dist-science \
    texmf-dist-pictures \
    texmf-dist-formatsextra \
    python3 \
    make

ENTRYPOINT ["/entrypoint.sh"]
