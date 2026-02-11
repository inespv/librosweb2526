FROM php:8.2-apache
RUN a2enmod proxy
RUN a2enmod proxy_http
COPY libros-web.conf /etc/apache2/sites-available/libros-web.conf
RUN a2dissite 000-default.conf
RUN a2ensite libros-web.conf
EXPOSE 80
