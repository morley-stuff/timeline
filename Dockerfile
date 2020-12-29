# From node image
FROM node:13.12.0-alpine

# Set working directory
WORKDIR /app

# Add node modules to path
ENV PATH /app/node_modules/.bin:$PATH

# Install app dependencies
COPY package*.json ./
RUN npm install --silent
RUN npm install react-scripts@3.4.1 -g --silent

# Add app
COPY . ./

# Start app
CMD ["npm", "start"]