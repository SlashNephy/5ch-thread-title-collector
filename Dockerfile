FROM python:3.11.4-slim-bullseye@sha256:40319d0a897896e746edf877783ef39685d44e90e1e6de8d964d0382df0d4952
WORKDIR /
ENV TZ=Asia/Tokyo

RUN pip install PyYAML

COPY ./collector.py /

ENTRYPOINT ["python", "-u", "/collector.py"]
