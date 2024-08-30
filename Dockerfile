# Use a base Node.js image with a specific version (e.g., 18.16.1)
FROM node:18.16.1-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your application files
COPY . .

# Set the environment variables (if needed)
ENV NODE_ENV production

# Expose the port your Vue app will listen on (e.g., 8080)
EXPOSE 8080

# Define the command to run your Vue app in production mode
CMD ["npm", "run", "build"]