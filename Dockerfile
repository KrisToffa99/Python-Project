#Dockerfile
FROM python:3.10-alpine

RUN mkdir /app
WORKDIR /app

COPY requirement.txt requirement.txt
RUN pip install -r requirement.txt

COPY ./src/app.py .
COPY ./tests/test_app.py .

CMD flask run --host=0.0.0.0 --port=5000
