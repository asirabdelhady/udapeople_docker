FROM node:12.6.0 AS build

ENV API_URL="backend:3000"

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build


FROM nginx:1.21
COPY --from=build /app/dist/ /usr/share/nginx/html/