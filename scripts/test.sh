#! /bin/bash

# TODO: make temporary volume from published/built wheel

docker run --rm -it \
    -v ...:/opt/backend.ai
    alpine:3.17
    /opt/backend.ai/bin/python -V
