# base image
FROM node:lts-alpine
# Copy application code.
COPY . /app/
# Change the working directory
WORKDIR /app
# Install dependencies.
RUN npm install --omit=dev
# Start the Express app
CMD ["node", "server.js"]
