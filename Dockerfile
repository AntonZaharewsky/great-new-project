FROM node:latest

RUN npm i nodemon -g

WORKDIR /app

COPY package.json .
COPY package-lock.json .

RUN npm i --only=production

COPY . .

EXPOSE 3000 9229