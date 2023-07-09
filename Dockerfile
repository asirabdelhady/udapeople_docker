FROM node:14-alpine

WORKDIR /app

COPY ./backend/package*.json ./

RUN npm install -g ts-node && npm install

COPY . .

CMD ["npm", "run", "migrations"]