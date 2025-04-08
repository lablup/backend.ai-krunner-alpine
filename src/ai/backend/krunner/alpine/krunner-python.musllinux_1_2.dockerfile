FROM python:3.13.2-alpine
ARG PREFIX=/opt/backend.ai

ENV PATH=${PREFIX}/bin:$PATH
ENV LANG=C.UTF-8
ENV PYTHON_VERSION 3.13.2

RUN mkdir -p ${PREFIX}; \
    mv /usr/local/* ${PREFIX}; \
    sed -i "s@/usr/local@${PREFIX}@g" ${PREFIX}/bin/pip*; \
    sed -i "s@/usr/local@${PREFIX}@g" ${PREFIX}/bin/idle3.13; \
    sed -i "s@/usr/local@${PREFIX}@g" ${PREFIX}/bin/2to3-3.13; \
    sed -i "s@/usr/local@${PREFIX}@g" ${PREFIX}/bin/pydoc3.13; \
    sed -i "s@/usr/local@${PREFIX}@g" ${PREFIX}/bin/python3.13-config; \
    sed -i "s@/usr/local@${PREFIX}@g" ${PREFIX}/bin/wheel; \
    :

CMD ["python3"]

# vim: ft=dockerfile
