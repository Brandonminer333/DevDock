FROM python:3.13-slim

# Set up system dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    git build-essential && rm -rf /var/lib/apt/lists/*

# Upgrade pip and set environment vars
ENV PYTHONUNBUFFERED=1 PIP_NO_CACHE_DIR=1

# Default workdir
WORKDIR /workspace

# Default command
CMD ["python3"]
