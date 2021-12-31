FROM julia:latest
LABEL maintainer="Axect"
LABEL description="Julia Scientific Computation Image"
LABEL version="0.1"

# ==============================================================================
# Create user & Set permissions
# ==============================================================================
ARG USER_ID
ARG GROUP_ID

RUN addgroup --gid $GROUP_ID quokka
RUN adduser --disabled-password --gecos '' --uid $USER_ID --gid $GROUP_ID quokka
RUN apt update && apt install -y sudo
RUN echo 'quokka ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

# ==============================================================================
# Build Essential
# ==============================================================================
RUN sudo apt update && apt upgrade -y
RUN sudo apt install -y \
    build-essential \
    curl \
    git \
    jq \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev \
    libxslt1-dev \
    libyaml-dev \
    python3-dev \
    python3-pip \
    python3-venv \
    python3-wheel \
    software-properties-common \
    unzip \
    wget \
    zlib1g-dev \
    htop

# ==============================================================================
# Install Julia packages
# ==============================================================================
COPY script.jl /home/quokka/script.jl
WORKDIR /home/quokka
RUN julia script.jl
