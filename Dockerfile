FROM python:3.11.3-slim-bullseye
WORKDIR /
ENV TZ=Asia/Tokyo

RUN pip install PyYAML

COPY ./collector.py /

ENTRYPOINT ["python", "-u", "/collector.py"]
