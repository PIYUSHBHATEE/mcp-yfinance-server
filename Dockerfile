# Use an official Python runtime as a parent image
FROM python:3.11-slim

ENV PYTHONUNBUFFERED=1

WORKDIR /app

# Copy all source code first
COPY . /app/

# Install dependencies using pip
RUN pip install --no-cache-dir -e .

# Expose port 8000 for the MCP server
EXPOSE 8000

# Command to run the server
CMD ["python", "main.py"]




