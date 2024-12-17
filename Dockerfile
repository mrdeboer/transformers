# Base Image with TensorFlow
FROM tensorflow/tensorflow:latest-gpu

# Install Python dependencies
RUN apt-get update && apt-get install -y git wget python3-pip && \
    pip install --upgrade pip && \
    pip install torch transformers accelerate sentencepiece

# Set working directory
WORKDIR /workspace

# Copy Hugging Face repository (optional, if cloned locally)
COPY . /workspace/

# Default command
CMD ["bash"]

