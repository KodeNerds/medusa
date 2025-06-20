# Use official Node.js image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package.json yarn.lock ./
RUN yarn install --production

# Copy remaining source code
COPY . .

# Set environment variables
ENV NODE_ENV=production

# Expose Medusa default port
EXPOSE 9000

# Start Medusa
CMD ["yarn", "start"]
