FROM python:3.11.1-alpine3.17

RUN apk add \
	build-base \
	ca-certificates

COPY requirements.txt /root/

RUN set -ex \
    && cd /root \
    && pip wheel -w ./wheels -r requirements.txt


# vim: ft=dockerfile
