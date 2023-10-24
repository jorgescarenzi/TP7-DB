FROM mysql

RUN chown -R mysql:root /var/lib/mysql/
ARG MYSQL_DATABASE
ARG MYSQL_USER
ARG MYSQL_PASSWORD
ARG MYSQL_ROOT_PASSWORD

ENV MYSQL_DATABASE=ecomdb
ENV MYSQL_USER=ecomuser
ENV MYSQL_PASSWORD=ecompassword
ENV MYSQL_ROOT_PASSWORD=root
VOLUME /var/lib/mysql
COPY ./scripts/db-load-script.sql /docker-entrypoint-initdb.d/

EXPOSE 3306
