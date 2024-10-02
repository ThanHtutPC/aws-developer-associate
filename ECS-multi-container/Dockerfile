# Dockerfile for the Python app
FROM python:3.9-slim

WORKDIR /usr/src/app

# Copy the local files to the container
COPY . .

# Upgrade pip and install dependencies
RUN pip install --upgrade pip && \
    pip install psycopg2-binary flask

# Expose port 8000 for the Flask app
EXPOSE 8000

# Set the default command to run the application
CMD ["python", "app.py"]
