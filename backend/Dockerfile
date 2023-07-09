FROM node:14

ENV TYPEORM_CONNECTION="postgres"
ENV TYPEORM_ENTITIES=./dist/modules/domain/**/*.entity{.ts,.js}
ENV TYPEORM_HOST="postgres"
ENV TYPEORM_PORT=5432
ENV TYPEORM_USERNAME="postgres"
ENV TYPEORM_PASSWORD="postgres"
ENV TYPEORM_DATABASE="postgres"
ENV TYPEORM_MIGRATIONS=./dist/migrations/.*ts
ENV TYPEORM_MIGRATIONS_DIR=./dist/migrations
ENV NODE_ENV=production 
ENV VERSION="1"

WORKDIR /app
COPY package*.json ./
RUN npm install
RUN npm install -g pm2 --production
RUN npm install -g ts-node typescript@3.8.3
COPY . .
RUN npm run build
EXPOSE 3000
CMD ["pm2-runtime", "start", "dist/main.js"]
