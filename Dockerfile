FROM node:6.0

ENV NODE_ENV development
ENV WATCHMAN_VER v4.5.0

EXPOSE 8080
EXPOSE 8081
EXPOSE 8082

RUN apt-get update && \
    apt-get install -y python-dev && \
    mkdir -p /tmp/watchman && \
    wget https://github.com/facebook/watchman/archive/$WATCHMAN_VER.tar.gz && \
    tar --strip-components=1 -xzf $WATCHMAN_VER.tar.gz -C /tmp/watchman && \
    cd /tmp/watchman && \
    ./autogen.sh && ./configure && make && make install && \
    rm -f $WATCHMAN_VER.tar.gz && \
    rm -rf /tmp/watchman

VOLUME /app/src

WORKDIR /app

CMD ["npm", "start"]
