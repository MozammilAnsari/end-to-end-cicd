# Base image
FROM python:3.14-slim

# Use a simple, safe working directory
WORKDIR /app

# Keep Python output buffered for logs
ENV PYTHONUNBUFFERED=1

#Copy everything
COPY . .

# Installing dependencies
RUN python -m pip install --no-cache-dir -r requirements.txt

#Expose the port
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]