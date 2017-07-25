FROM alpine:latest

RUN apk add --update nodejs nodejs-npm \
    && npm install npm@latest -g \
    && git

WORKDIR /SiaraBot

RUN git clone https://github.com/michaelmoney/SiaraBot.git /SiaraBot

RUN npm install

CMD npm start
