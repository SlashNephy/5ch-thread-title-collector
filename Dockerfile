FROM python:3.11.4-slim-bullseye@sha256:9943649825523ba1e96787279e5d6450bef73b91d0f1f8eb6649abfa3572ee68
WORKDIR /
ENV TZ=Asia/Tokyo

RUN pip install PyYAML

COPY ./collector.py /

ENTRYPOINT ["python", "-u", "/collector.py"]
