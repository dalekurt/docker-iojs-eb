FROM iojs:3.2.0

MAINTAINER Dale-Kurt Murray "dalekurt.murray@gmail.com"

RUN mkdir /app

WORKDIR /app

ADD package.json /app/package.json

RUN npm install

ADD . /app

CMD ["npm", "start"]

EXPOSE 3000
