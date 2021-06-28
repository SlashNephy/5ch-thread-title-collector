FROM python:alpine

RUN apk add --update --no-cache tzdata
ENV TZ=Asia/Tokyo

RUN pip install PyYAML

COPY ./collector.py /

WORKDIR /
ENTRYPOINT ["python", "-u", "collector.py"]
