#!/bin/bash

## Aprovisiona el equipo remoto con: Vagrant, VirtualBox y Ansible en el caso de no tenerlos
ansible-playbook vagrant.yml

Servicio=$1
DirectorioAnsible="/root/aprovisionamiento/vagrant/ansible"
DirectorioRemoto="VagrantTestRemoto"
DirectorioVagrantfile="/root/aprovisionamiento/vagrant/ejemplo1"

Usuario="root"
Ip="192.168.6.3"

case $Servicio in
     apache|nginx)
          DirectorioServicio="web"
          ;;
     vsftpd)
          DirectorioServicio="ftp"
          ;;
     mysql|postgresql)
          DirectorioServicio="bd"
          ;;
     postfix)
          DirectorioServicio="correo"
          ;;
esac

## Empaqueta el directorio del servicio
cd $DirectorioAnsible/$DirectorioServicio/
tar -cf $Servicio/$Servicio.tar $Servicio

## Crea el directorio remoto y transfiere los ficheros
ssh $Usuario@$Ip "mkdir -p $DirectorioRemoto"
scp $Servicio/$Servicio.tar $Usuario@$Ip:$DirectorioRemoto
rm $Servicio/$Servicio.tar
scp $DirectorioVagrantfile/Vagrantfile $Usuario@$Ip:$DirectorioRemoto

## Desempaqueta el fichero y ejecuta Vagrant
ssh $Usuario@$Ip "cd $DirectorioRemoto && tar -xf $Servicio.tar && rm $Servicio.tar"
ssh $Usuario@$Ip "cd $DirectorioRemoto && vagrant up"