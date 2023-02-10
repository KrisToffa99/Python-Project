FROM python:3.10-alpine

RUN mkdir /app
WORKDIR /app

COPY requirement.txt requirement.txt
RUN pip install -r requirement.txt

COPY ..

LABEL maintainer="WebMagic Informatica <info@webmagicinformatica.com>" \
      version="1.0

CMD flask run --host=0.0.0.0 --port=5000
