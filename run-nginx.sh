sed -i "s#<INDEXFILE>#$INDEXFILE#g" /etc/nginx/conf.d/default.conf

nginx -g 'daemon off;'