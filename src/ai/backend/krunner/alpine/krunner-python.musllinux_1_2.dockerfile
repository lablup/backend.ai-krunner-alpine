FROM python:3.12.6-alpine
ARG PREFIX=/opt/backend.ai

ENV PATH=${PREFIX}/bin:$PATH
ENV LANG=C.UTF-8
ENV PYTHON_VERSION 3.12.6

RUN mkdir -p ${PREFIX}; \
    mv /usr/local/* ${PREFIX}; \
    sed -i "s@/usr/local@${PREFIX}@g" ${PREFIX}/bin/pip*; \
    sed -i "s@/usr/local@${PREFIX}@g" ${PREFIX}/bin/idle3.12; \
    sed -i "s@/usr/local@${PREFIX}@g" ${PREFIX}/bin/2to3-3.12; \
    sed -i "s@/usr/local@${PREFIX}@g" ${PREFIX}/bin/pydoc3.12; \
    sed -i "s@/usr/local@${PREFIX}@g" ${PREFIX}/bin/python3.12-config; \
    sed -i "s@/usr/local@${PREFIX}@g" ${PREFIX}/bin/wheel; \
    :

CMD ["python3"]

# vim: ft=dockerfile
