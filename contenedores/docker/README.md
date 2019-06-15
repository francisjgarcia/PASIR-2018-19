# Docker

## ¿Qué es docker?
Es un proyecto de código libre que se ha convertido en uno de los términos de moda por las ventajas que proporciona, entre otros, a los profesionales del desarrollo web y de aplicaciones o los administradores de sistemas, por la facilidad que supone el trabajar con el concepto de contenedores.

Docker está transformando la forma en que se desarrolla, distribuye y ejecuta el software. La ventaja es muy evidente, podemos encapsular todo el entorno de trabajo de manera que los desarrolladores saben que pueden estar trabajando en su servidor local, con la seguridad de que, al llegar el momento de ponerlo en producción, van a estar ejecutándose con la misma configuración sobre la que se han hecho todas las pruebas.

De esta forma, vamos a poder reducir los tiempos de testeo y adaptaciones al hardware del que se dispone en el entorno de producción.

Docker nos ayuda a no malgastar nuestro tiempo configurando el entorno, y las dependencias del sistema, porque lo vamos a poder desplegar fácilmente. Algo muy útil tanto para grandes empresas, como Red Hat o Google, como para las pequeñas startups que empiezan a desarrollar su aplicación.

## Contenido del repositorio

  - Web
    - Apache: Docker-compose, Dockerfile, virtualhost e index.
    - Nginx: Docker-compose, Dockerfile, fichero de configuración e index.
  - FTP
    - Vsftpd: Docker-compose, Dockerfile, fichero de configuración, script para dejar contenedor ejecutándose siempre.
  - Base de datos:
    - MySQL: Docker-compose, Dockerfile, fichero my.cnf y database.
    - PostgreSQL: Docker-compose, Dockerfile y database.
  - Correos:
    - Postfix servidor: Docker-compose, Dockerfile, y fichero de configuración.
    - Postfix reenviador: Docker-compose, Dockerfile, certificado Gmail y ficheros de configuración.

## Instalación
Para comenzar a utilizar docker, necesitamos instalar docker
```sh
# apt install docker.io
```