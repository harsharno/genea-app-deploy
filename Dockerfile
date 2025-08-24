# Use Node 18 LTS
FROM node:18-alpine

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy app code
COPY . .

# Expose the port your app listens on
EXPOSE 3000

# Run the app
CMD ["node", "server.js"]
