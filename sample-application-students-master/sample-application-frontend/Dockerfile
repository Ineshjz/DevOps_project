FROM node:12.16.3-stretch-slim AS build
WORKDIR /tmp/front
COPY src/ src/
COPY public/ public/
COPY package.json .
COPY package-lock.json* .
RUN npm install
RUN npm run build

FROM httpd:2.4
COPY --from=build /tmp/front/dist /usr/local/apache2/htdocs
COPY httpd.conf /usr/local/apache2/conf/httpd.conf
EXPOSE 80
CMD ["httpd", "-D", "FOREGROUND"]