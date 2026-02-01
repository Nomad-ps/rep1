# Use official Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

#Install dependencies first
RUN pip install "fastapi[standard]"

# Copy project files
COPY main.py .

EXPOSE 8000

# Run the application
CMD ["fastapi", "dev", "main.py", "--host", "0.0.0.0", "--port", "8000"]
