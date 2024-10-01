# 
ARG PORT

# Use a specific Node.js version
# https://nuxt.com/docs/getting-started/installation
FROM node:18-alpine

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and pnpm-lock.yaml
COPY package*.json ./

# Install pnpm
RUN npm install

# Copy the rest of the code
COPY . .

# Build the application
RUN npm run build

# Set environment variable for production
ENV NODE_ENV=production

# Expose the port the app runs on
# EXPOSE ${PORT}

# Command to run the built application
CMD ["node", ".output/server/index.mjs"]