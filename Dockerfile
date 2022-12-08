FROM node:19-alpine

WORKDIR /usr/src/back

COPY package*.json ./

RUN npm install -g npm@9.2.0

RUN npm install

COPY . .

# EXPOSE 4001

# CMD ["npm", "start"]