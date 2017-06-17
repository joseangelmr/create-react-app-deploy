FROM alpine:3.5
FROM jfyne/node-alpine-yarn:latest

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY . /usr/src/app

EXPOSE 9090
RUN ls

RUN yarn
RUN yarn build

RUN yarn global add pushstate-server
CMD pushstate-server build