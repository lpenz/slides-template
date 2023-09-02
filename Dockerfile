FROM pandoc/core

RUN set -e -x; \
    apk add curl; \
    curl -L https://github.com/hakimel/reveal.js/archive/refs/tags/4.5.0.tar.gz | tar -xzf -

