# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Bundle your app source
COPY . .

# Expose the port that your app will run on
EXPOSE 3000

# Define the command to run your app
CMD ["npm", "run", "dev"]
