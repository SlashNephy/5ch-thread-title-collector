FROM python:3.11.4-slim-bullseye@sha256:68ff2208aed4c4d9562e4f1e42e9a648430a52bf8b284ac0c8c7d5ef26dc8575
WORKDIR /
ENV TZ=Asia/Tokyo

RUN pip install PyYAML

COPY ./collector.py /

ENTRYPOINT ["python", "-u", "/collector.py"]
