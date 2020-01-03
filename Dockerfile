FROM mysql:8.0.18

LABEL "maintainer"="Farrukh Waheed <farrukhw@gmail.com>" \
     "description"="Image based upon mysql ver 8.0.18 while added database, table and data."

COPY ./sql_dumps/*.sql /docker-entrypoint-initdb.d/

ENV MYSQL_ROOT_PASSWORD=12345

EXPOSE 3306 33060

# CMD ["mysql" "-u root --default-authentication-plugin=mysql_native_password"]