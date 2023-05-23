FROM python:3.11.3-slim-bullseye@sha256:eaee5f73efa9ae962d2077756292bc4878c04fcbc13dc168bb00cc365f35647e
WORKDIR /
ENV TZ=Asia/Tokyo

RUN pip install PyYAML

COPY ./collector.py /

ENTRYPOINT ["python", "-u", "/collector.py"]
