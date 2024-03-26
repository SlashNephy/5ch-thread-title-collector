FROM python:3.12.2-slim-bullseye@sha256:3c9599f1a8a5c384e3a17231dd24a32777e26b3705386b3a0403086cbbd23868
WORKDIR /
ENV TZ=Asia/Tokyo

RUN pip install PyYAML

COPY ./collector.py /

ENTRYPOINT ["python", "-u", "/collector.py"]
