FROM php:7.4-cli
MAINTAINER "Jordan Kniest <mail@jkniest.de>"

# Install additional php extensions
RUN apt update \
	&& apt install git zip libzip-dev zlib1g-dev libpq-dev libicu-dev jq libmagickwand-dev libjpeg-dev libfreetype6-dev -y \
	&& docker-php-ext-configure gd --with-jpeg=/usr/include/ --with-freetype=/usr/include/ \
	&& docker-php-ext-install bcmath pcntl pdo pdo_pgsql zip exif intl gd \
	&& pecl install pcov imagick \
	&& docker-php-ext-enable pcov imagick

# Install composer
RUN curl https://getcomposer.org/download/2.0.9/composer.phar -o /usr/local/bin/composer \
	&& chmod +x /usr/local/bin/composer

# Set memory limit to unlimited
RUN echo 'memory_limit = -1' >> /usr/local/etc/php/conf.d/docker-php-memlimit.ini;
