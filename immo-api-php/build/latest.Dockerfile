FROM php:8.4

# basic update
RUN apt-get update && \
    apt-get install --yes --force-yes

# installing the docker php extensions installer
RUN curl -sSLf \
        -o /usr/local/bin/install-php-extensions \
        https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions && \
    chmod +x /usr/local/bin/install-php-extensions

# PHP Configuration
RUN install-php-extensions  mysqli
RUN install-php-extensions  pdo_mysql
RUN install-php-extensions @composer

EXPOSE 80

COPY php.ini /usr/local/etc/php/

CMD composer install