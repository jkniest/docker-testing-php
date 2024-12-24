FROM php:8.4-cli
LABEL MAINTAINER="Jordan Kniest <mail@jkniest.de>"

# Install additional php extensions
RUN apt update \
	&& apt install git zip libzip-dev zlib1g-dev libpq-dev libicu-dev jq libjpeg-dev libfreetype6-dev -y \
	&& docker-php-ext-configure gd --with-jpeg=/usr/include/ --with-freetype=/usr/include/ \
	&& docker-php-ext-install bcmath pcntl pdo pdo_pgsql zip exif intl gd \
	&& pecl install pcov \
	&& docker-php-ext-enable pcov

# Install composer
RUN curl https://getcomposer.org/download/2.8.4/composer.phar -o /usr/local/bin/composer \
	&& chmod +x /usr/local/bin/composer \
    && composer self-update

# Set memory limit to unlimited
RUN echo 'memory_limit = -1' >> /usr/local/etc/php/conf.d/docker-php-memlimit.ini;

ENV PATH="/root/.composer/vendor/bin:${PATH}"
