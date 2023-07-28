FROM python:3.11.4-slim-bullseye@sha256:33a523645034e8e1ad4b5761f687cf1442e78ebbd29b007add1e5e1329e14e13
WORKDIR /
ENV TZ=Asia/Tokyo

RUN pip install PyYAML

COPY ./collector.py /

ENTRYPOINT ["python", "-u", "/collector.py"]
