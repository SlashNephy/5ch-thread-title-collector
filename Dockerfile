FROM python:3.11.3-slim-bullseye@sha256:551c9529e77896518ac5693d7e98ee5e12051d625de450ac2a68da1eae15ec87
WORKDIR /
ENV TZ=Asia/Tokyo

RUN pip install PyYAML

COPY ./collector.py /

ENTRYPOINT ["python", "-u", "/collector.py"]
