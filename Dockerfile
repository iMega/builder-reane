FROM node:6.0

ENV NODE_ENV development
ENV WATCHMAN_VER v4.5.0

RUN npm install -g react-native-cli

VOLUME /app

WORKDIR /app
