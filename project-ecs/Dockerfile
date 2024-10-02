# Dockerfile for Python app
FROM python:3.9-slim

WORKDIR /usr/src/app

COPY . .

RUN pip install --upgrade pip && \
    pip install flask

EXPOSE 8000

CMD ["python", "app.py"]
