FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
CMD ["gunicorn", "auth_api.wsgi:application", "--bind", "0.0.0.0:8000"]
