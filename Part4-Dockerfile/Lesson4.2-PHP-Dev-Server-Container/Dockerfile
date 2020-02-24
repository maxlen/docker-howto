FROM php:7.4-cli

EXPOSE 8000
RUN mkdir /myproject
COPY index.php /myproject
WORKDIR /myproject

#after container start
CMD ["php", "-S", "0.0.0.0:8000"]