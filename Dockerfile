FROM python:3.11.4-slim-bullseye@sha256:9ca2f18d8747dcd1da57c9cc38de5ae67768106833fbd85bec44022bb02a5827
WORKDIR /
ENV TZ=Asia/Tokyo

RUN pip install PyYAML

COPY ./collector.py /

ENTRYPOINT ["python", "-u", "/collector.py"]
