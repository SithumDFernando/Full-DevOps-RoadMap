# --- Stage 1: Builder ---
FROM python:3.10-slim AS builder

WORKDIR /app
# Install build dependencies if needed (not strictly needed for Flask, but good practice)
RUN apt-get update && apt-get install -y --no-install-recommends gcc

# Copy requirements first to leverage Docker layer caching
COPY requirements.txt .
RUN pip wheel --no-cache-dir --no-deps --wheel-dir /app/wheels -r requirements.txt

# --- Stage 2: Runtime ---
FROM python:3.10-slim

WORKDIR /app

# Copy wheels from builder and install
COPY --from=builder /app/wheels /wheels
COPY --from=builder /app/requirements.txt .
RUN pip install --no-cache /wheels/*

# Copy application code
COPY . .

# Create a non-root user for security
RUN useradd -m appuser && chown -R appuser /app
USER appuser

EXPOSE 8080
CMD ["python", "app.py"]
