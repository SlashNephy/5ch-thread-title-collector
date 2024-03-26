FROM python:3.11.8-slim-bullseye@sha256:6988e45203d296f2bc89f171995487f388fc18f1cb23110c6521eb3dcca369a9
WORKDIR /
ENV TZ=Asia/Tokyo

RUN pip install PyYAML

COPY ./collector.py /

ENTRYPOINT ["python", "-u", "/collector.py"]
