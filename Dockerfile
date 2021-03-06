FROM node:16-alpine

WORKDIR /usr/src/back

COPY package*.json ./

RUN npm install

COPY . .

# EXPOSE 4001

# CMD ["npm", "start"]