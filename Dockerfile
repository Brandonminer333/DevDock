# Dockerfile

# 1. Start from an official Python image
FROM python:3.13-slim

# 2. Set up environment variables
ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1 \
    PIP_NO_CACHE_DIR=1

# 3. Create a working directory
WORKDIR /workspace

# 4. Install system dependencies (optional)
RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# 5. Copy project files
COPY requirements.txt .

# 6. Install Python dependencies
RUN pip install --upgrade pip && pip install -r requirements.txt

# 7. Expose Jupyter port
EXPOSE 8888

# 8. Default command: launch JupyterLab
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--no-browser", "--allow-root"]
