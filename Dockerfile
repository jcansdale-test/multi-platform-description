

FROM python:3.9-alpine

RUN apk add --no-cache --update ca-certificates tzdata build-base && \
    update-ca-certificates && \
    rm -rf /root/.cache

# now a bunch of nonsensical layers to increase the chance of failure
RUN echo "a"
RUN echo "b"
RUN echo "c"
RUN echo "d"
RUN echo "e"
RUN echo "f"
RUN echo "g"
RUN echo "h"
RUN echo "i"
RUN echo "j"
RUN echo "k"
RUN echo "l"
RUN echo "m"
RUN echo "n"

CMD ["python --version"]

# LABEL org.opencontainers.image.description "Description from org.opencontainers.image.description"
LABEL foo=bar
