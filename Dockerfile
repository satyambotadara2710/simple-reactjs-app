# node setup to build
FROM  node:21-alpine AS build
WORKDIR /usr/app
COPY ./package*.json /usr/app/
RUN npm install --force --fetch-timeout=480000
COPY . /usr/app/
ENTRYPOINT [ "npm","start"]
