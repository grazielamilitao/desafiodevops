FROM node:9-alpine

RUN mkdir -p /node/app

WORKDIR /node/app

RUN npm install --quiet

RUN npm run

EXPOSE 3000

CMD npm start