FROM node:14

# Setting working directory. All the path will be relative to WORKDIR
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
#IF you are building your code for production
#RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 5000
CMD [ "node", "index.js" ]
