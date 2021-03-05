# Dockerfile CPU
FROM python

RUN apt-get update && \
    apt-get install -y && \
    apt-get install -y apt-utils wget

RUN pip install --upgrade pip
RUN pip install transformers \
    flask \
    Flask-Cors \
    openchat

WORKDIR /app
COPY . .

EXPOSE 80

CMD ["python", "demo/start_demo.py"]
