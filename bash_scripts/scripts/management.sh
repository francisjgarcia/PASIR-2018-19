#!/bin/bash

#VARIABLES
CONFIG_CLUSTER="/var/lib/mysql-cluster"
FICHERO_CLUSTER="config.ini"

#Descargar paquete del cluster management
wget https://dev.mysql.com/get/Downloads/MySQL-Cluster-7.6/mysql-cluster-community-management-server_7.6.6-1ubuntu18.04_amd64.deb

#Instalar paquete
dpkg -i mysql-cluster-community-management-server_7.6.6-1ubuntu18.04_amd64.deb

#Crear directorio de configuración
mkdir -p /var/lib/mysql-cluster

#Crear fichero de configuración
touch $CONFIG_CLUSTER/$FICHERO_CLUSTER

#Crear contenido del fichero de configuración
echo "Numero de nodos de datos: "
read NUMERO_NODOS_DATOS

echo "[ndbd default]" > $CONFIG_CLUSTER/$FICHERO_CLUSTER
echo "NoOfReplicas=$NUMERO_NODOS_DATOS" >> $CONFIG_CLUSTER/$FICHERO_CLUSTER

echo ""
echo "Dirección IP del Nodo Management: "
read MANAGEMENT
echo "" >> $CONFIG_CLUSTER/$FICHERO_CLUSTER
echo "[ndb_mgmd]" >> $CONFIG_CLUSTER/$FICHERO_CLUSTER
echo "hostname=$MANAGEMENT" >> $CONFIG_CLUSTER/$FICHERO_CLUSTER
echo "datadir=/var/lib/mysql-cluster" >> $CONFIG_CLUSTER/$FICHERO_CLUSTER

CONTADOR=1
while [ $CONTADOR -le $NUMERO_NODOS_DATOS ]; do
		NUMERO_NODO_DATOS=$(($CONTADOR + 1))
        echo ""
        echo "Dirección IP del Nodo de datos $CONTADOR"
        read IP
		echo "" >> $CONFIG_CLUSTER/$FICHERO_CLUSTER
		echo "[ndbd]" >> $CONFIG_CLUSTER/$FICHERO_CLUSTER
		echo "hostname=$IP" >> $CONFIG_CLUSTER/$FICHERO_CLUSTER
		echo "NodeId=$NUMERO_NODO_DATOS" >> $CONFIG_CLUSTER/$FICHERO_CLUSTER
		echo "datadir=/usr/local/mysql/data" >> $CONFIG_CLUSTER/$FICHERO_CLUSTER
        let CONTADOR++
done

echo ""
echo "Numero de nodos SQL: "
read NUMERO_NODOS_SQL

CONTADOR=1
while [ $CONTADOR -le $NUMERO_NODOS_SQL ]; do
        echo ""
        echo "Dirección IP del Nodo SQL $CONTADOR"
        read IP
		echo "" >> $CONFIG_CLUSTER/$FICHERO_CLUSTER
		echo "[mysqld]" >> $CONFIG_CLUSTER/$FICHERO_CLUSTER
		echo "hostname=$IP" >> $CONFIG_CLUSTER/$FICHERO_CLUSTER
        let CONTADOR++
done

#Ejecutar el nodo management
ndb_mgmd -f $CONFIG_CLUSTER/$FICHERO_CLUSTER
