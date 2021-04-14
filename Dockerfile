FROM alpine:3.13.4

LABEL maintainer="Tonye Jack <jtonye@ymail.com>"

RUN apk update && apk add --virtual .build-deps \
  build-base \
  gcc \
  bash \
  python3 \ 
  py3-pip

RUN pip3 install --no-cache --upgrade pip wheel setuptools

RUN apk del .build-deps

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
