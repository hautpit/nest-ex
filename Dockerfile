# FROM node:20.9.0

# # Create app directory
# WORKDIR /app

# # A wildcard is used to ensure both package.json AND package-lock.json are copied
# COPY package*.json ./

# # Install app dependencies
# RUN yarn install

# # Bundle app source
# COPY . .

# # Creates a "dist" folder with the production build
# RUN yarn build

FROM node:20.9.0

# Create app directory
WORKDIR /app

# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./

# Install app dependencies
RUN yarn install

# Bundle app source
COPY . .

EXPOSE 8080
CMD ["npm", "start"]

