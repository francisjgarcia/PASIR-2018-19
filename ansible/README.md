# Ansible

## ¿Qué es ansible?
Ansible es un software que automatiza el aprovisionamiento de software, la gestión de configuraciones y el despliegue de aplicaciones. Está categorizado como una herramienta de orquestación, muy útil para los administradores de sistema y DevOps.
En otras palabras, Ansible permite a los DevOps gestionar sus servidores, configuraciones y aplicaciones de forma sencilla, robusta y paralela.

Ansible gestiona sus diferentes nodos a través de SSH y únicamente requiere Python en el servidor remoto en el que se vaya a ejecutar para poder utilizarlo. Usa YAML para describir acciones a realizar y las configuraciones que se deben propagar a los diferentes nodos.

Es gratuita, ya que utiliza una licencia GNU GPL v3, sigue con la filosofía del código abierto y permite automatizar la mayoría de los elementos de una infraestructura. Esto es, desde servidores hasta dispositivos de red. Puede funcionar, con el rol de servidor, en sistemas GNU/Linux y tipo UNIX, como por ejemplo AIX, Solaris o BSD.

También permite trabajar con los proveedores de la nube, como AWS, Azure o Google Cloud Platform. Gestionando componentes como redes, grupos de seguridad, direcciones IP o claves públicas.
Hace unos años Ansible fue adquirida por la compañía Red Hat.

## Contenido del repositorio
  - Web
    - Apache: Playbook, variables, virtualhost e index.
    - Nginx: Playbook, variables, fichero de configuración e index.
  - FTP
    - Vsftpd: Playbook, variables y fichero de configuración de vsftpd.
  - Base de datos:
    - MySQL: Playbook, variables, fichero my.cnf y database.
    - PostgreSQL: Playbook, variables y database.
  - Correos:
    - Postfix: Playbooks, variables, certificado Gmail y ficheros de configuración.

## Instalación
Para comenzar a utilizar ansible se debe instalar ansible en un equipo aprovisionador, además de python.
```sh
# apt install ansible
# apt install python
```
Mientras que el equipo que es aprovisionado sólo necesita python.
```sh
# apt install python
```
Una vez instalados, sólo se necesitará tener acceso vía SSH mediante clave privada desde el equipo aprovisionador hacia el equipo aprovisionado.