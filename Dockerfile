# Use the official Python image as the base
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the application files to the container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir flask gunicorn prometheus-flask-exporter

# Expose the port the app runs on
EXPOSE 5000

# Define the command to run the app
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]

