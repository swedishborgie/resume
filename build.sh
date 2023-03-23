#!/bin/sh
podman build -t chrome-headless-render-pdf .
podman run --rm -v$(pwd):/build:z chrome-headless-render-pdf \
    --chrome-option=--no-sandbox --include-background \
    --url file:///build/resume.html --pdf resume-plain.pdf
podman run --rm -v$(pwd):/build:z --entrypoint gs chrome-headless-render-pdf \
    -o resume.pdf -sDEVICE=pdfwrite resume-plain.pdf resume.pdfmark