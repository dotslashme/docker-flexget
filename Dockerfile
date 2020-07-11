FROM alpine

RUN apk update --no-cache \
    && apk add --no-cache py3-pip \
    && pip install --no-cache-dir --ignore-installed flexget transmissionrpc
CMD ["flexget", "daemon", "start"]