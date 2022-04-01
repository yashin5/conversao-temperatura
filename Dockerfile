from node:alpine3.14

WORKDIR /app

COPY package*.json ./src ./

RUN npm install

COPY ./src .

EXPOSE 8080

CMD node server.js
