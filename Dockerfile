# base image
FROM node:18-alpine

# set working directory
WORKDIR /app

# copy package files
COPY package*.json ./

#Install dependencies
RUN npm install

# copy the rest of the project
COPY . .

# build the app
RUN npm run build

# expose the port
EXPOSE 3000

# start the app
CMD ["npm", "start"]