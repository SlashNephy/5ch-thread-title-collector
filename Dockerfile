FROM python:3.11.4-slim-bullseye@sha256:933083cddf041acec1be03ddd1c2e7abb5ce0b2b5fbc0e06c8b29be5f21b2c96
WORKDIR /
ENV TZ=Asia/Tokyo

RUN pip install PyYAML

COPY ./collector.py /

ENTRYPOINT ["python", "-u", "/collector.py"]
