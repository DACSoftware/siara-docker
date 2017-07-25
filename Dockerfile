FROM alpine:latest

RUN apk add --update nodejs nodejs-npm git \
    && npm install npm@latest -g


WORKDIR /SiaraBot

RUN git clone https://github.com/michaelmoney/SiaraBot.git /SiaraBot

RUN npm install

CMD npm start
