# Use an official Node.js image from the Docker Hub as the base image
FROM node:18

# Create and change to the app directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application files to the working directory
COPY . .

# Specify the port that the app listens on
EXPOSE 3000

# Define the command to run your app
CMD ["npm", "start"]
