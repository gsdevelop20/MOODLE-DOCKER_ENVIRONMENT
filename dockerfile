# Use a imagem base do Moodle
FROM moodlehq/moodle-php-apache:8.1

RUN apt-get update && \
    apt-get install -y wget autoconf gcc make

# Copiar o arquivo xdebug.ini para a configuração do PHP
COPY xdebug.ini /usr/local/etc/php/conf.d/

EXPOSE 9004