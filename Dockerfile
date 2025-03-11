# Use a Python base image
FROM python:3.9-slim-buster

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements.txt file into the container
COPY requirements.txt /app/

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the project files into the container
COPY . /app

# Copy the init_db.sql file into the container
COPY init_db.sql /docker-entrypoint-initdb.d/

# Command to run the ETL pipeline 
CMD ["python", "main.py"]