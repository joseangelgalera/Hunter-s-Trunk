FROM php:8.2-apache-buster

EXPOSE 80

# Instalamos las extensiones mysqli y pdo_mysql
RUN docker-php-ext-install mysqli
RUN docker-php-ext-install pdo_mysql

# Habilitamos las extensiones que acabamos de installar
RUN docker-php-ext-enable mysqli
RUN docker-php-ext-enable pdo_mysql

# Instalamos composer
RUN curl -sS https//getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Intalamos git
  RUN apt-get update
  RUN apt-get install git-all

# Reiniciomos el servicio
RUN a2enmod rewrite
RUN apachectl restart