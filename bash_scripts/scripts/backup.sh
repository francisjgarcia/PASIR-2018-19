#!/bin/bash

Fecha=$(date +%Y-%m-%d)
DirectorioBackups="/backups"

mkdir -p $DirectorioBackups
mount -t cifs //192.168.1.11/PASIR-Backup $DirectorioBackups -o username=Francis,password=CONTRASEÑA || exit

mkdir -p /$DirectorioBackups/$Fecha
cp -R /hdd-ext/* /$DirectorioBackups/$Fecha

umount /$DirectorioBackups

rmdir /$DirectorioBackups