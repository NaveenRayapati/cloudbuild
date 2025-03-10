# Use an official Node.js runtime as a parent image
FROM node:20-alpine

# Set the working directory
WORKDIR /app

# Copy only package.json (package-lock.json is optional)
COPY package.json ./

# Install dependencies if package.json exists
RUN if [ -f package.json ]; then npm install --production; fi

# Copy the rest of the application code
COPY . .

# Expose the application port
EXPOSE 8080

# Run the application
CMD ["node", "server.js"]

