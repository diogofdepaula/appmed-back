FROM node:19-alpine

WORKDIR /usr/src/back

COPY package*.json ./

RUN npm install -g npm@9.6.4

RUN npm install

COPY . .

# EXPOSE 4001

# CMD ["npm", "start"]