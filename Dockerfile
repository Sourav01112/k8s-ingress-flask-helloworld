FROM python:3.7-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

# Run app.py when the container launches
CMD ["python", "app.py"]
