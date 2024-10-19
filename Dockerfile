FROM python:3.13.0-slim-bullseye@sha256:5f806dfaaf027b52e0982a4aa0246acb902d8c8d12e0965015440099c63759a2
WORKDIR /
ENV TZ=Asia/Tokyo

RUN pip install PyYAML

COPY ./collector.py /

ENTRYPOINT ["python", "-u", "/collector.py"]
