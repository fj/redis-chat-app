FROM node:carbon
WORKDIR /usr/src/app

COPY package.json ./
COPY npm-shrinkwrap.json ./

RUN npm install
COPY . .

CMD ["npm", "start"]