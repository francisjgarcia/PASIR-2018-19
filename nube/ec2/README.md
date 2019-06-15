# Nube (EC2)

## ¿Qué es EC2 AWS?
Amazon Elastic Compute Cloud (Amazon EC2) proporciona capacidad de computación escalable en la nube de Amazon Web Services (AWS).
El uso de Amazon EC2 elimina la necesidad de invertir inicialmente en hardware, de manera que puede desarrollar e implementar aplicaciones en menos tiempo. Se puede utilizar Amazon EC2 para lanzar tantos servidores virtuales como se necesite, configurar la seguridad y las redes o administrar su almacenamiento.
Amazon EC2 le permite escalar hacia arriba o hacia abajo para controlar cambios en los requisitos o picos de popularidad, con lo que se reduce la necesidad de prever el tráfico. 

## ¿Qué es Terraform?
Es una herramienta de orquestación de código abierto que nos permite definir nuestra infraestructura como código.
Tiene soporte para una gran cantidad de proveedores de infraestructura local o en la nube, Amazon Web Services (AWS), Digital Ocean, Microsoft Azure, VMware vSphere, son ejemplos de proveedores de servicios.

Estos proveedores de nube cuentan con sus propias herramientas de infraestructura como código, por ejemplo, algunos de ellos como Amazon AWS que tiene a CloudFormation que solo soporta la infraestructura en Amazon, OpenStack tiene Heat, Azure tiene Resource Manager, pero Terraform no está cerrado a un proveedor en específico, puede trabajar con todos ellos e incluso de forma simultánea sin ningún inconveniente.

## Contenido del repositorio
Para crear la infraestructura en AWS, tenemos scripts en ansible y en terraform.

  - Ansible:
    - Ansible-playbook.
    - Fichero de variables.
    - Fichero de hosts.
  - Terraform
    - Script de despliegue .tf

## Instalación
Para comenzar a utilizar terraform, deberemos descargar el paquete con respecto al tipo de sistema operativo utilizado desde su [web oficial](https://www.terraform.io/downloads.html).

Una vez descargado, sólo deberemos descomprimirlo y utilizar su binario.