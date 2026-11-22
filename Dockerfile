FROM python:3.12-slim

WORKDIR /app
COPY . .

CMD ["python", "main_runner.py"]