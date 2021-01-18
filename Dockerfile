FROM alpine:3.12

LABEL maintainer="Tonye Jack <jtonye@ymail.com>"

RUN apk add bash python3 py3-pip && \
  pip3 install --no-cache --upgrade pip setuptools && \
  pip3 install bandit

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
