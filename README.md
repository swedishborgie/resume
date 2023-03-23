# Michael Powers - Resume
[![Build Resume](https://github.com/swedishborgie/resume/actions/workflows/build.yml/badge.svg)](https://github.com/swedishborgie/resume/actions/workflows/build.yml)

This repository contains the source code and build scripts for my resume. The document itself is just a plain HTML document styled with CSS.

To be useful as a resume the HTML needs to be rendered as a PDF. In order to do this when a release tag is pushed to Github it triggers a Github Action which launches headless Chromium to print the HTML as a PDF. Then it applies metadata and creates a release version of the resume which you can find in the releases section of this repository.

To build the resume locally with Podman:
```
$ ./build.sh
```