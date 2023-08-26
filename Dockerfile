FROM python:3.11.5-slim-bullseye@sha256:0bc6588e043ceff0278c3936467fce6dad52c5889bf4eb257ad5147a17522064
WORKDIR /
ENV TZ=Asia/Tokyo

RUN pip install PyYAML

COPY ./collector.py /

ENTRYPOINT ["python", "-u", "/collector.py"]
