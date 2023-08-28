FROM node:16.5.0-slim

WORKDIR /usr/app
EXPOSE 9001

COPY package*.json ./
COPY src ./src

RUN npm ci --production

ENTRYPOINT ["node", "./src/index.js"]