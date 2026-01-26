FROM python:3-alpine

WORKDIR /app
COPY scan.py requirements.txt docker-entrypoint.sh .
RUN ["chmod", "755", "docker-entrypoint.sh"]
RUN ["pip", "install", "-r", "requirements.txt"]

ENTRYPOINT ["./docker-entrypoint.sh"]
