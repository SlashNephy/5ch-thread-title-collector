FROM python:3.11.4-slim-bullseye@sha256:91d194f58f50594cda71dcd2e8fdefd90e7ecc57d07823813b67c8521e565dcd
WORKDIR /
ENV TZ=Asia/Tokyo

RUN pip install PyYAML

COPY ./collector.py /

ENTRYPOINT ["python", "-u", "/collector.py"]
