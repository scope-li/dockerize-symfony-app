FROM php:7.4-apache
LABEL maintainer="Scope GmbH <info@scope.li>"

#Define environment variables.
ENV APP_ENV=prod
ENV APP_DEBUG=0

# Install tools and libs.
RUN apt-get update && apt-get install -y \
    git unzip

# Install composer.
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Setup apache2.
COPY ./docker/config/apache2/000-default.conf /etc/apache2/sites-available/000-default.conf

# Setup app.
COPY ./symfony /var/www/html
RUN cd /var/www/html && composer install --no-dev --optimize-autoloader
RUN cd /var/www/html && bin/console cache:clear

# Set owner and group.
RUN chown -R www-data:www-data /var/www/html