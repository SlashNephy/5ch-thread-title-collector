FROM python:alpine

RUN pip install PyYAML

COPY ./collector.py /

WORKDIR /
ENTRYPOINT ["python", "-u", "collector.py"]
