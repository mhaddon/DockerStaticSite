FROM nginx:alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html /var/www/html/index.html
COPY run-nginx.sh /usr/local/bin/run-nginx

RUN mkdir -p /var/www/html /var/www/logs

ENV INDEXFILE=index.html

WORKDIR /var/www/html

CMD /usr/local/bin/run-nginx