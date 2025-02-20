# Use a recent Ubuntu image
FROM ubuntu:20.04

# Update and install necessary tools
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    python3 \
    python3-pip \
    nodejs \
    npm \
    git \
    && rm -rf /var/lib/apt/lists/*

# Set up a working directory for the app
WORKDIR /app

# Install any additional dependencies if needed
RUN pip3 install --upgrade pip

# Set the default command (you can change this depending on your VM or app)
CMD ["bash"]
