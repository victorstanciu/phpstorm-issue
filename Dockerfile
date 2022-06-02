FROM php:8.1-fpm-alpine3.15 AS base

RUN mv "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini"

COPY --from=composer:2.1 /usr/bin/composer /usr/local/bin/composer

WORKDIR /var/www