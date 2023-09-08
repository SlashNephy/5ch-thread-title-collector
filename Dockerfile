FROM python:3.11.5-slim-bullseye@sha256:de917502e531b3f6e4a5acef017e9feef392cf3eb76826fd46d6810c70ae9b5e
WORKDIR /
ENV TZ=Asia/Tokyo

RUN pip install PyYAML

COPY ./collector.py /

ENTRYPOINT ["python", "-u", "/collector.py"]
