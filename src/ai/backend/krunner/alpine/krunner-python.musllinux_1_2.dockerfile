FROM python:3.11.2-alpine
ARG PREFIX=/opt/backend.ai

ENV PATH=${PREFIX}/bin:$PATH
ENV LANG=C.UTF-8
ENV PYTHON_VERSION 3.11.2

RUN mkdir -p ${PREFIX}; \
    mv /usr/local/* ${PREFIX}; \
    sed -i 's@/usr/local@/opt/backend.ai@g' ${PREFIX}/bin/pip*; \
    sed -i 's@/usr/local@/opt/backend.ai@g' ${PREFIX}/bin/idle3.11; \
    sed -i 's@/usr/local@/opt/backend.ai@g' ${PREFIX}/bin/2to3-3.11; \
    sed -i 's@/usr/local@/opt/backend.ai@g' ${PREFIX}/bin/pydoc-3.11; \
    sed -i 's@/usr/local@/opt/backend.ai@g' ${PREFIX}/bin/python3.11-config; \
    sed -i 's@/usr/local@/opt/backend.ai@g' ${PREFIX}/bin/wheel; \
    :

CMD ["python3"]

# vim: ft=dockerfile
