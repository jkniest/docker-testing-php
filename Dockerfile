FROM php:7.4-cli
MAINTAINER "Jordan Kniest <mail@jkniest.de>"

# Install additional php extensions
RUN apt update && \
	apt install git zip libzip-dev zlib1g-dev libpq-dev libicu-dev jq -y && \
	docker-php-ext-install bcmath pcntl pdo pdo_pgsql zip exif intl && \
	pecl install pcov && \
	docker-php-ext-enable pcov

# Install composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
	php composer-setup.php && \
	php -r "unlink('composer-setup.php');" && \
	mv composer.phar /usr/local/bin/composer && \
	chmod +x /usr/local/bin/composer

