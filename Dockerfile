FROM python:3.11.4-slim-bullseye@sha256:48c5fa0689f8d7de2cd117b9a51d4c9baeb1337d31fb0c0345a657731ac0ab36
WORKDIR /
ENV TZ=Asia/Tokyo

RUN pip install PyYAML

COPY ./collector.py /

ENTRYPOINT ["python", "-u", "/collector.py"]
