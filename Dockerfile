FROM nginx:alpine

WORKDIR /usr/share/nginx/html

COPY abejopolis/Build/ ./Build/
COPY abejopolis/index.html ./index.html
COPY abejopolis/nginx.conf /etc/nginx/conf.d/default.conf

RUN chown -R nginx:nginx /usr/share/nginx/html \
    && chmod -R a+rX /usr/share/nginx/html
