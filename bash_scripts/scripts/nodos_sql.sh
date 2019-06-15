#!/bin/bash

#VARIABLES
CONFIG_MYCNF_NODOSQL="/etc/mysql/my.cnf"

#Descargar las librerías necesarias
apt install libaio1 libmecab2

#Descargar el paquete para el nodo SQL
wget https://dev.mysql.com/get/Downloads/MySQL-Cluster-7.6/mysql-cluster_7.6.6-1ubuntu18.04_amd64.deb-bundle.tar

#Crear directorio para extraer los paquetes
mkdir install

#Extraer los paquetes
tar -xvf mysql-cluster_7.6.6-1ubuntu18.04_amd64.deb-bundle.tar -C install/

cd install

#Instalar los paquetes necesarios
dpkg -i mysql-common_7.6.6-1ubuntu18.04_amd64.deb
dpkg -i mysql-cluster-community-client_7.6.6-1ubuntu18.04_amd64.deb
dpkg -i mysql-client_7.6.6-1ubuntu18.04_amd64.deb
dpkg -i mysql-cluster-community-server_7.6.6-1ubuntu18.04_amd64.deb
dpkg -i mysql-server_7.6.6-1ubuntu18.04_amd64.deb

#Configurar el servidor MySQL
echo ""
echo "Dirección IP del Nodo Management: "
read MANAGEMENT

echo "[mysqld]" >> $CONFIG_MYCNF_NODOSQL
echo "ndbcluster" >> $CONFIG_MYCNF_NODOSQL
echo "" >> $CONFIG_MYCNF_NODOSQL
echo "[mysql_cluster]" >> $CONFIG_MYCNF_NODOSQL
echo "ndb-connectstring=$MANAGEMENT" >> $CONFIG_MYCNF_NODOSQL

#Reiniciar el servicio de MySQL y arrancarlo al inicio del sistema
systemctl restart mysql
systemctl enable mysql
