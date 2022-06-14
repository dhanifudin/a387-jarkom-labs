FROM node:14-alpine
LABEL Maintainer="Dian Hanifudin Subhi <dhanifudin@gmail.com>"

RUN apk --no-cache add nginx

COPY config/nginx/konfigurasiNGINX_dianhanifudinsubhi.txt /etc/nginx/nginx.conf
COPY config/supervisor/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 3000

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]
