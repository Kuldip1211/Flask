FROM python:3.12-slim

WORKDIR /app

COPY code/ /app/code/

CMD ["tail", "-f", "/dev/null"]