FROM alpine:3

RUN apk update && apk add --no-cache chromium nodejs npm ghostscript && \
    npm install -g chrome-headless-render-pdf node-static

WORKDIR /build

ENTRYPOINT ["chrome-headless-render-pdf"]