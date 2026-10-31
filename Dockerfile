FROM python:3.12-slim

WORKDIR /app

# Install Python packages
#COPY requirements.txt .
#RUN pip install --no-cache-dir -r requirements.txt

# Copy checked-out code from GitHub Actions into the container
COPY . .


CMD ["/bin/bash"]