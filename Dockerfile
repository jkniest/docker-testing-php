FROM php:8.0-cli
MAINTAINER "Jordan Kniest <mail@jkniest.de>"

# Install additional php extensions
RUN apt update \
	&& apt install git zip libzip-dev zlib1g-dev libpq-dev libicu-dev jq libmagickwand-dev libjpeg-dev libfreetype6-dev -y \
	&& docker-php-ext-configure gd --with-jpeg=/usr/include/ --with-freetype=/usr/include/ \
	&& docker-php-ext-install bcmath pcntl pdo pdo_pgsql zip exif intl gd \
	&& pecl install pcov \
	&& docker-php-ext-enable pcov

# install imagick
# Version is not officially released https://pecl.php.net/get/imagick but following works for PHP 8
RUN mkdir -p /usr/src/php/ext/imagick; \
    curl -fsSL https://github.com/Imagick/imagick/archive/06116aa24b76edaf6b1693198f79e6c295eda8a9.tar.gz | tar xvz -C "/usr/src/php/ext/imagick" --strip 1; \
    docker-php-ext-install imagick;

# Install composer
RUN curl https://getcomposer.org/download/2.0.12/composer.phar -o /usr/local/bin/composer \
	&& chmod +x /usr/local/bin/composer

# Set memory limit to unlimited
RUN echo 'memory_limit = -1' >> /usr/local/etc/php/conf.d/docker-php-memlimit.ini;
