# todo: replace this with slimer image (using alpine)
FROM node:8.6-slim

RUN mkdir /usr/src/temp
RUN mkdir /usr/src/server
WORKDIR /usr/src/temp

COPY package.json .
COPY server.js .

RUN npm install && npm install -g pm2

EXPOSE 4000

CMD [ "pm2-runtime", "server.js" ]