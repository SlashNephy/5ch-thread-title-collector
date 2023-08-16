FROM python:3.11.4-slim-bullseye@sha256:ec50272bc293f1b6cab51d923ab8641b193a3d6ba813b9214a29fd0b9e930047
WORKDIR /
ENV TZ=Asia/Tokyo

RUN pip install PyYAML

COPY ./collector.py /

ENTRYPOINT ["python", "-u", "/collector.py"]
