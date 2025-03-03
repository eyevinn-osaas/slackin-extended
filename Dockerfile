FROM node:16-alpine
ADD . /srv/www
WORKDIR /srv/www
RUN npm install --unsafe-perm
RUN npm run build

ENV SLACKIN_PORT=8080
CMD ./bin/slackin.js
