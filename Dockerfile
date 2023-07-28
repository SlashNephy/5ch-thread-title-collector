FROM python:3.11.4-slim-bullseye@sha256:52c7a54aa5e5068ce76edaf3f8652a64fb99e378fb89fb0bfbe21a8756d0013c
WORKDIR /
ENV TZ=Asia/Tokyo

RUN pip install PyYAML

COPY ./collector.py /

ENTRYPOINT ["python", "-u", "/collector.py"]
