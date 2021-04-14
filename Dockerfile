FROM python:3.9-slim-buster

LABEL maintainer="Tonye Jack <jtonye@ymail.com>"

RUN apt-get update \
  && apt-get install -y build-essential \
  && pip3 install --no-cache --upgrade pip setuptools wheel

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
