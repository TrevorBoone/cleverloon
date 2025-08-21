FROM nginx
ARG nginx_conf=nginx_nossl.conf

COPY static /var/www/cleverloon.com
COPY ${nginx_conf} /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]