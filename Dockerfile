FROM alpine:3.13.0

LABEL maintainer="Tonye Jack <jtonye@ymail.com>"

RUN apk add bash python3 py3-pip
RUN pip3 install --no-cache --upgrade pip setuptools

WORKDIR /action
COPY entrypoint.sh entrypoint.sh
RUN chmod +x entrypoint.sh
ENTRYPOINT ["/action/entrypoint.sh"]
