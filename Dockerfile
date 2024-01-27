# Use the official Node.js 14 image as the base image
FROM node:14-alpine

# Set a label for your image
LABEL org.opencontainers.image.title="Test Deployment" \
      org.opencontainers.image.description="Nginx server rendering a simple web page" \
      org.opencontainers.image.authors="folarin oyenuga"

# Create a directory in the container image for your app code
RUN mkdir -p /usr/src/app

# Copy your app code (.) to /usr/src/app in the container image
COPY . /usr/src/app

# Set the working directory to /usr/src/app
WORKDIR /usr/src/app

# Install the project dependencies from package.json
RUN npm install

# Specify the command for the container to execute
CMD ["node", "script.js"]

