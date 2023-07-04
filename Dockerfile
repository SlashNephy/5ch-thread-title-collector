FROM python:3.11.4-slim-bullseye@sha256:87a1f4d072ca88161bcd57878d912cae21eb718d9608859f57654ca05ab58545
WORKDIR /
ENV TZ=Asia/Tokyo

RUN pip install PyYAML

COPY ./collector.py /

ENTRYPOINT ["python", "-u", "/collector.py"]
