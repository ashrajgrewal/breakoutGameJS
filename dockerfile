# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy the contents of your Breakout Game project to the container
COPY . .

# Install any project-specific dependencies (if needed)
RUN npm install

# Expose the port your web server will listen on
EXPOSE 8080

# Command to start the web server
CMD ["npx", "http-server", "-p", "8080"]
