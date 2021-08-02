FROM python:3.9.6-slim-buster

LABEL maintainer="Tonye Jack <jtonye@ymail.com>"

RUN python3 -m venv /venv && \
  /venv/bin/pip3 install bandit

ENV PATH="/venv/bin:${PATH}"

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
