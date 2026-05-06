FROM drupal:latest

# Enable Apache mod_rewrite
RUN a2enmod rewrite

EXPOSE 80
