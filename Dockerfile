FROM python:3.11.10-slim-bullseye@sha256:08ef1d5c4e0c05244f0971150437c57f6c79863345e549dbaebaf1b61f56bdf5
WORKDIR /
ENV TZ=Asia/Tokyo

RUN pip install PyYAML

COPY ./collector.py /

ENTRYPOINT ["python", "-u", "/collector.py"]
