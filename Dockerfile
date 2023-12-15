# Use an official Node.js image with LTS version 18.x.x
FROM node:18

# Set the working directory in the container
WORKDIR /app

# Copy the application code into the container
COPY . /app

# Install application dependencies
RUN yarn install --frozen-lockfile

# Expose port 3000
EXPOSE 3000

# Command to run the application
CMD ["pm2-runtime", "yarn", "start"]
