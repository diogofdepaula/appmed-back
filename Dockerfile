FROM node:alpine

WORKDIR /home/diogo/back

COPY package*.json ./

RUN npm install

COPY . .

# EXPOSE 4001

# CMD ["npm", "start"]