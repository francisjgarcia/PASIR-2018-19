FROM debian

MAINTAINER Francis "francisjgarcia94@gmail.com"

RUN apt-get update && \
  apt-get -y install mysql-server && \
  service mysql start && \
  mysql -u root -e "grant all privileges on dbwordpress.* to 'wp_user'@'%' identified by 'miclave'" && \
  mysql -u root -e "flush privileges" && \
  mysql -u root -e "CREATE DATABASE dbwordpress"

EXPOSE 3306

ADD ["50-server.cnf","/etc/mysql/mariadb.conf.d/50-server.cnf"]

RUN /bin/bash -c "/usr/bin/mysqld_safe --skip-grant-tables &" && \
  sleep 5 && \
  mysql -u root -e "UPDATE mysql.user SET Password=PASSWORD('ClaveRoot') WHERE User='root'" && \
  mysql -u root -e "UPDATE mysql.user SET plugin = 'mysql_native_password' WHERE user = 'root'" && \
  mysql -u root -e "flush privileges" && \
  service mysql restart

ENTRYPOINT ["mysqld_safe"]

