#!/bin/bash

# Nos conectamos todos nuestros nodos
docker-machine create -d generic --generic-ip-address=192.168.1.201 --generic-ssh-user=root --generic-ssh-key /shared/key/FJG.key nodo1
docker-machine create -d generic --generic-ip-address=192.168.1.202 --generic-ssh-user=root --generic-ssh-key /shared/key/FJG.key nodo2

# Utilizamos el primer nodo como nodo mánager
IpManager=$(docker-machine ip nodo1)
eval $(docker-machine env nodo1)

# Inicializamos nuestro nodo manager
docker swarm init --advertise-addr $IpManager
TokenNodo=$(docker swarm join-token worker -q)

# Unimos todos los demás nodos al nodo mánager
eval $(docker-machine env nodo2)
docker swarm join --token $TokenNodo $IpManager:2377

# Creamos desde el nodo mánager nuestro servicio
eval $(docker-machine env nodo1)

docker service create \
    --name Apache_WP \
    --replicas 3 \
    --publish 8080:80 \
    -e WORDPRESS_DB_USER=wp_user \
    -e WORDPRESS_DB_PASSWORD=miclave \
    -e WORDPRESS_DB_HOST=192.168.1.200 \
    -e WORDPRESS_DB_NAME=dbwordpress \
    wordpress:4.7