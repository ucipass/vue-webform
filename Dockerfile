FROM node:10.16.0-alpine

WORKDIR /source/rp

COPY * /source/rp

RUN cd /source/rp && npm i --only=production

RUN npm run build

RUN apt install nginx

COPY . .

EXPOSE 80
