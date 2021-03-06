# syntax=docker/dockerfile:1

FROM python:3.10.0rc1-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY . .

CMD [ "uvicorn", "APP.main:app", "--reload"]