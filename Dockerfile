# Base on official Node-RED image
FROM nodered/node-red:latest

# Set working directory for persistence
WORKDIR /data

# Copy package.json and install extra deps if needed (Back4app runs npm install automatically)
COPY package.json .
RUN npm install

# Copy settings (optional)
COPY settings.js .

# Expose port
EXPOSE 1880

# Start Node-RED
CMD ["node-red", "--settings", "settings.js"]
