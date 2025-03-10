# Use an official Node.js runtime as a parent image
FROM node:20-alpine

# Set the working directory
WORKDIR /app

# Skip copying package.json if it doesn't exist
# Install dependencies only if they exist
COPY . .
RUN if [ -f package.json ]; then npm install --production; fi

# Expose the application port
EXPOSE 8080

# Run the application
CMD ["node", "server.js"]

