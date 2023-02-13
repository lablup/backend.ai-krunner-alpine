FROM alpine:3.17

# This is the minimal Alpine image to run krunner.
RUN apk add \
        ca-certificates \
        tzdata \
        libffi \
        sqlite-libs \
    ;
