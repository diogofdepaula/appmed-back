FROM node:21-alpine

WORKDIR /usr/src/back

COPY package*.json ./

RUN npm install -g npm@10.5.0

RUN npm install

COPY . .

# EXPOSE 4001

# CMD ["npm", "start"]