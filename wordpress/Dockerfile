FROM wordpress:php8.1-fpm-alpine

# temporary env variables
ENV WORDPRESS_DB_HOST=db:3306
ENV WORDPRESS_DB_USER=wordpress_user
ENV WORDPRESS_DB_PASSWORD=wordpress_password
ENV WORDPRESS_DB_NAME=wordpress_db

# php-fpm port expose
EXPOSE 9000

# COPY ./plugins /var/www/html/wp-content/plugins

# Run php-fpm
CMD ["php-fpm"]
