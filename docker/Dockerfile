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

RUN apk add python3 py3-pygments \
    py3-scipy py3-numpy py3-matplotlib

WORKDIR /files

RUN ln -s /usr/bin/python3 /usr/bin/python

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
