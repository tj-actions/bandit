FROM python:3.6.12-alpine3.12

LABEL maintainer="Tonye Jack <jtonye@ymail.com>"

RUN apk add bash && \
  pip3 install --no-cache --upgrade pip setuptools && \
  python3 --version && \
  pip3 --version

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
