FROM python:3.9-alpine3.13

LABEL maintainer="Tonye Jack <jtonye@ymail.com>"

RUN apk update && \
  apk add bash build-base gcc python3 py3-pip \
  && pip3 install --no-cache --upgrade pip setuptools wheel

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
