ARG PYTHON_VERSION=3.10-slim

# === STAGE 1: Build Stage ===
FROM python:${PYTHON_VERSION} AS builder

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir --user -r requirements.txt

# === STAGE 2: Run Stage ===
FROM python:${PYTHON_VERSION} AS runner

WORKDIR /app

ENV PYTHONUNBUFFERED=1

COPY --from=builder /root/.local /root/.local
COPY . .

ENV PATH=/root/.local/bin:$PATH

RUN python manage.py migrate

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
