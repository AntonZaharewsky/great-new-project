FROM node:latest

RUN npm i nodemon -g

WORKDIR /app

COPY package.json .
COPY package-lock.json .

RUN npm i

COPY . .

EXPOSE 3000 9229