#!/bin/bash

#VARIABLES
CONFIG_MYCNF_NODODATOS="/etc/my.cnf"

#Instalación de librerías necesarios
apt install libclass-methodmaker-perl

#Descargar paquete de nodo de datos
wget https://dev.mysql.com/get/Downloads/MySQL-Cluster-7.6/mysql-cluster-community-data-node_7.6.6-1ubuntu18.04_amd64.deb

#Instalar el paquete
dpkg -i mysql-cluster-community-data-node_7.6.6-1ubuntu18.04_amd64.deb

#Crear y configurar el fichero que conecta con el nodo management
touch $CONFIG_MYCNF_NODODATOS

echo ""
echo "Dirección IP del Nodo Management:"
read MANAGEMENT

echo "[mysql_cluster]" > $CONFIG_MYCNF_NODODATOS
echo "ndb-connectstring=$MANAGEMENT" >> $CONFIG_MYCNF_NODODATOS

mkdir -p /usr/local/mysql/data

ndbd
