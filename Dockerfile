FROM python:3.11.3-slim-buster

LABEL maintainer="Tonye Jack <jtonye@ymail.com>"

COPY requirements.txt .

RUN python3 -m venv /venv && \
  /venv/bin/pip3 install -r requirements.txt

ENV PATH="/venv/bin:${PATH}"

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
