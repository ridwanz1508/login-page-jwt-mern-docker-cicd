FROM node:18

WORKDIR /app

COPY package*.json ./
RUN npm install
 
COPY . .

# Build React app
RUN npm run build

# Install static file server
RUN npm install -g serve

# Serve the build folder
EXPOSE 3000
CMD ["serve", "-s", "build"]
 