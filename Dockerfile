# Use official Python 3.10 image for better compatibility
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy requirements file
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose port (assuming Flask default port 5000)
EXPOSE 5000

# Command to run the app
CMD ["python", "app.py"]
