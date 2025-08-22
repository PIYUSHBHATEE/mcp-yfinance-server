# Use an official Python runtime as a parent image
FROM python:3.11-slim

ENV PYTHONUNBUFFERED=1

WORKDIR /app

# Copy dependency files
COPY pyproject.toml uv.lock /app/

# Install uv for dependency management and install dependencies
RUN pip install --no-cache-dir uv && \
    uv sync --frozen

# Copy the rest of the application code
COPY . /app/

# Expose port 8000 for the MCP server
EXPOSE 8000

# Command to run the server
CMD ["python", "main.py"]




