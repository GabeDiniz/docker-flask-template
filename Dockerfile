# Use official Python image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy app to the container
COPY ./app /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port on 5000
EXPOSE 5000

# Run the application
CMD ["python", "main.py"]
