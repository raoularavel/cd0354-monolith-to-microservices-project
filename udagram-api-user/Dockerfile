FROM node:16
# Create app directory
WORKDIR /usr/src/app
# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied where available (npm@5+)
COPY package*.json ./
COPY yarn.lock ./
RUN yarn install 
# Bundle app source
COPY . .

EXPOSE 80

CMD [ "npm", "run", "prod" ]
