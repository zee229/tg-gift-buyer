FROM python:3.13

WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# Set environment variables to disable Python output buffering
ENV PYTHONUNBUFFERED=1
ENV PYTHONIOENCODING=UTF-8
ENV DOCKERIZED=1

# Command to run the Telegram service with forced unbuffered output
CMD ["python", "-u", "main.py"] 
