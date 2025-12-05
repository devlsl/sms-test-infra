FROM node:22 AS build
WORKDIR /app

COPY client/ ./
RUN yarn install
RUN yarn build

FROM nginx:stable-alpine

COPY docker/client.nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=build /app/dist /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]