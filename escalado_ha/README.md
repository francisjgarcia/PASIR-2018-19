# Escalado y alta disponibilidad
Para escalar servicios y mantener una alta disponibilidad, se ha utilizado docker swarm.

## ¿Qué es docker swarm?
Swarm es literalmente: “Un protocolo de aglomeración nativo a Docker. Convierte un grupo de hosts Docker en un solo host virtual de Docker. Por el hecho de que Docker Swarm sirve al API estándar de Docker, cualquier herramienta que ya se comunique con el daemon de Docker puede usar Swarm para distribuirse de forma transparente y proporcional entre varios hosts”.

Esto realmente suena muy bien y promete ser una herramienta muy poderosa para seguir exprimiendo el potencial que Docker ofrece.

## Contenido del repositorio

  - Ansible:
    - alta_disponibilidad.yml: Con esto desplegamos nuestro swarm con dos nodos y un equipo balanceador entre medio.
    - escalabilidad.yml: Agregamos un nuevo nodo al docker swarm.
    - Ficheros de hosts.
  - Varios ficheros de configuración, binarios...
  - Dos scripts para lanzar el docker swarm (docker_swarm.sh) y para escalarlo (docker_swarm_escalado.sh)

## Instalación
Para utilizarlo, sólo debemos tener instalado ansible en un equipo aprovisionador y este se encargará (mediante una clave privada que debe estar configurada su pública en los demás equipos) de crear toda la configuración en los demás equipos, que deben tener instalado pyhon.

**Equipo aprovisionador**
```sh
# apt install ansible
# apt install python
```
**Equipo aprovisionado**
```sh
# apt install python
```