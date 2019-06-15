# Bash scripts
Se han utilizado diferentes scripts.

| Nombre del script | Descripción |
| ------ | ------ |
| backup.sh | Utilizado para comprobar RunDeck y utilizado para automatizar mediante cron una copia de seguridad semanal del PASIR. |
| management.sh | Se ejecuta en el nodo management de un cluster de MySQL para configurarlo como tal. |
| nodos_sql.sh | Se ejecuta en todos los nodos SQL a utilizar en un cluster de MySQL, pudiendo ser uno de estos el management. |
| nodos_datos.sh | Se ejecuta en todos los nodos de datos de un cluster MySQL. |