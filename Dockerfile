FROM node:current-alpine3.13

RUN apk update && apk add git

WORKDIR /data/convert

RUN npm update -g
RUN npm install --save curlconverter
RUN ls
RUN pwd

COPY /data/convert /data/convert
