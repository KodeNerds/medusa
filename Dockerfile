# Use Node.js 20 (LTS)
FROM node:20

# Set working directory
WORKDIR /app

# Copy dependency files first and install
COPY package.json yarn.lock ./
RUN yarn install --production

# Copy the rest of the code
COPY . .

# Set production environment
ENV NODE_ENV=production

# Expose Medusa default port
EXPOSE 9000

# Start the Medusa server
CMD ["yarn", "start"]
