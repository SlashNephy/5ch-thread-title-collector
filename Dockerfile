FROM python:3.11.4-slim-bullseye@sha256:e2d50d4ac4d8a0cd6b44f07496ed14cf29f8c0000d12a22b4df8fff2c2432d0d
WORKDIR /
ENV TZ=Asia/Tokyo

RUN pip install PyYAML

COPY ./collector.py /

ENTRYPOINT ["python", "-u", "/collector.py"]
