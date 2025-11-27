FROM ubuntu:22.04

# Install build tools and Qt6
RUN apt update && apt install -y \
    build-essential \
    qt6-base-dev \
    qt6-tools-dev \
    qt6-tools-dev-tools \
    cmake \
    wget \
    git \
    ca-certificates \
    libgl1-mesa-dev \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /project

# Copy project
COPY . /project

# Make linuxdeployqt executable
RUN chmod +x linuxdeployqt-continuous-x86_64.AppImage
