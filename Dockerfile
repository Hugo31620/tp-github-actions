FROM python:3.10-slim

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

CMD ["python", "-m", "unittest", "discover", "-s", ".", "-p", "test_*.py"]
