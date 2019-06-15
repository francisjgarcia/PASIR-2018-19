#!/bin/bash

# Nos conectamos todos nuestros nodos
docker-machine create -d generic --generic-ip-address=192.168.1.203 --generic-ssh-user=root --generic-ssh-key /shared/key/FJG.key nodo3

# Utilizamos el primer nodo como nodo mánager
IpManager=$(docker-machine ip nodo1)
eval $(docker-machine env nodo1)

# Obtenemos el token del nodo mánager
TokenNodo=$(docker swarm join-token worker -q)

# Unimos los nuevos nodos al mánager
eval $(docker-machine env nodo3)
docker swarm join --token $TokenNodo $IpManager:2377

# Creamos desde el nodo mánager nuestro servicio
eval $(docker-machine env nodo1)

# Ampliamos el número de replicas
docker service scale Apache_WP=5