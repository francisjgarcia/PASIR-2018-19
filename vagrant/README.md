# Vagrant

## ¿Qué es vagrant?
Vagrant permite generar entornos de desarrollo reproducibles y compartibles de forma muy sencilla. Para ello, crea y configura máquinas virtuales a partir de simples ficheros de configuración.

Basta con compartir el fichero de configuración de Vagrant (Vagrantfile) con otro desarrollador para que, con un simple comando, pueda reproducir el mismo entorno de desarrollo. Esto es especialmente útil en equipos formados por varias personas, ya que asegura que todos los desarrolladores tienen el mismo entorno, con las mismas dependencias y configuración.

Además, dado que la configuración de la máquina virtual es un simple fichero de texto plano, podemos incluir este fichero en nuestro repositorio en el control de versiones, junto con el resto del código del proyecto.

De esta manera, un nuevo desarrollador que se incorpore al equipo simplemente tendrá que clonar el repositorio del proyecto y ejecutar Vagrant para tener el entorno de desarrollo montado y funcionando en cuestión de minutos.

## Contenido del repositorio

### Vagrant
Contiene tres ejemplos para lanzar máquinas virtuales utilizando Vagrantfiles.

### Ansible
Contiene playbooks de ansible adaptados a Vagrant.
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

### Scripts para ejecución en remoto
También se contiene un script en bash para instalar y lanzar máquinas virtuales con Vagrant en remoto utilizando SSH y SCP.

## Instalación
Para comenzar a utilizar Vagrant, necesitamos instalarlo además necesitar Virtualbox.
```sh
# apt install vagrant
# apt install virtualbox
```