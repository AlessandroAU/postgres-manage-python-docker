# Use Python Alpine as the base image
FROM python:3.9-alpine

# Install PostgreSQL binaries
RUN apk add --no-cache postgresql-client

# Set the working directory
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . .

# Set the command to run your application
CMD [ "python", "app.py" ]