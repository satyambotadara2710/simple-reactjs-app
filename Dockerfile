# node setup to build
FROM  node:21-alpine AS build
WORKDIR /usr/app
COPY ./package*.json /usr/app/
RUN npm install --force --fetch-timeout=240000
COPY . /usr/app/
ENTRYPOINT [ "npm","start"]
# RUN npm run build
# # nginx setup
# FROM nginx:latest
# WORKDIR /usr/web
# COPY --from=build /usr/app/build /usr/web/
# COPY --from=build /usr/app/nginx.conf /etc/nginx/nginx.conf
