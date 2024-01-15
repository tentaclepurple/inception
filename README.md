## Docker:

Contenedorización:

Docker utiliza contenedorización para empaquetar aplicaciones y sus dependencias en unidades llamadas contenedores.
Los contenedores ofrecen un entorno consistente y aislado, asegurando que una aplicación se ejecute de la misma manera en diferentes entornos.

Imágenes:

Las imágenes de Docker son los bloques de construcción de los contenedores. Una imagen es un paquete ejecutable que incluye todo lo necesario para ejecutar un software.

Dockerfile:

Las imágenes de Docker se crean a partir de un conjunto de instrucciones definidas en un archivo llamado Dockerfile. Este archivo especifica la imagen base, el código de la aplicación, las dependencias y otras configuraciones.

Motor de Docker:

El Motor de Docker es el componente principal de Docker. Incluye el daemon de Docker (un proceso en segundo plano que gestiona contenedores) y una interfaz de línea de comandos (CLI) para interactuar con Docker.

Registro:

Las imágenes de Docker pueden almacenarse en un registro, que es un repositorio centralizado para compartir y distribuir imágenes. Docker Hub es un registro público popular, y las organizaciones a menudo utilizan registros privados.

Comandos de Docker:

Los desarrolladores utilizan comandos de Docker para construir, empujar, extraer y ejecutar contenedores. Ejemplos de comandos incluyen docker build, docker run, docker push, etc.

Docker Compose:

## Archivo de Definición (docker-compose.yml):

Docker Compose simplifica la gestión de aplicaciones multi-contenedor. Utiliza un archivo YAML llamado docker-compose.yml para definir los servicios, redes y volúmenes de una aplicación.

Servicios:

Cada servicio en Docker Compose representa un componente contenedorizado de la aplicación, como un servicio web o una base de datos.

Redes:

Docker Compose crea automáticamente una red para los servicios definidos en el archivo docker-compose.yml, permitiendo que los servicios se comuniquen entre sí utilizando los nombres de 
servicio como nombres de host.

Volúmenes:

Docker Compose permite definir volúmenes para persistir datos entre reinicios de contenedor.
Variables de Entorno:

Se pueden definir variables de entorno en el archivo docker-compose.yml o en archivos de entorno separados. Estas variables se utilizan para configurar servicios.

Comandos:

Con Docker Compose, se pueden iniciar, detener y escalar servicios con comandos simples. Por ejemplo, docker-compose up inicia los servicios definidos y docker-compose down los detiene y elimina.

Configuración Sencilla:

Docker Compose simplifica la gestión de aplicaciones con múltiples contenedores al proporcionar una forma fácil y declarativa de definir la configuración y relaciones entre los servicios.


## La principal diferencia entre usar una imagen con Docker Compose y sin Docker Compose radica en la forma en que se gestionan y orquestan los contenedores.

Sin Docker Compose:

Cuando utilizas Docker sin Docker Compose, generalmente ejecutas comandos individuales de Docker para crear, ejecutar y gestionar contenedores.
Las opciones de configuración se pasan directamente a través de los comandos de Docker, y la gestión de múltiples contenedores y sus interconexiones puede volverse compleja.
No hay una definición declarativa única que describa la configuración de todos los servicios de la aplicación.
Con Docker Compose:

Docker Compose proporciona una forma declarativa de definir y gestionar la configuración de múltiples contenedores en un solo archivo YAML (docker-compose.yml).
Permite describir todos los servicios, redes, volúmenes y configuraciones de entorno de la aplicación en un único archivo, lo que facilita la comprensión y mantenimiento.
Docker Compose simplifica la orquestación de contenedores, permitiendo que todos los servicios se inicien, se detengan y se escalen juntos mediante comandos simples.
Facilita la gestión de variables de entorno, redes y volúmenes, así como la especificación de dependencias entre servicios.
En resumen, Docker Compose es una herramienta diseñada específicamente para simplificar el despliegue y la gestión de aplicaciones compuestas por varios contenedores. Proporciona una abstracción más alta y una forma más estructurada de organizar y gestionar contenedores en comparación con el uso directo de comandos individuales de Docker.

## Docker ofrece varios beneficios significativos en comparación con las máquinas virtuales tradicionales. Aquí algunos de los beneficios clave de Docker:

Eficiencia de Recursos:

Docker utiliza el concepto de contenedores, que comparten el mismo kernel del sistema operativo anfitrión. Esto significa que los contenedores son más ligeros en comparación con las máquinas virtuales, lo que resulta en una mayor eficiencia en el uso de recursos.
Rápido Despliegue y Arranque:

Los contenedores Docker se inician rápidamente, en cuestión de segundos. Esto es mucho más rápido que el tiempo de arranque de las máquinas virtuales, que pueden llevar minutos.

Portabilidad:

Los contenedores Docker encapsulan aplicaciones y sus dependencias en un entorno consistente y portátil. Esto facilita la migración de aplicaciones entre entornos de desarrollo, prueba y producción sin preocuparse por las diferencias en la infraestructura subyacente.

Aislamiento Eficiente:

Mientras que las máquinas virtuales virtualizan todo un sistema operativo, Docker proporciona aislamiento a nivel de proceso. Esto significa que los contenedores están más cerca del sistema operativo anfitrión y comparten recursos de manera más eficiente.

Escalabilidad Horizontal:

Docker facilita la escalabilidad horizontal al permitir la implementación y ejecución de múltiples contenedores en una máquina anfitriona. Puedes fácilmente escalar aplicaciones agregando o quitando contenedores según sea necesario.

Entornos de Desarrollo Consistentes:

Docker asegura que una aplicación se ejecute de la misma manera en cualquier entorno. Esto simplifica la creación de entornos de desarrollo consistentes, reduciendo los problemas de "funciona en mi máquina".

Gestión Fácil de Dependencias:

Las dependencias de la aplicación se empaquetan junto con la aplicación en un contenedor. Esto elimina los problemas de dependencias y versiones, ya que todo lo que la aplicación necesita para ejecutarse está contenido en el contenedor.

Facilidad de Configuración y Orquestación:

Docker ofrece herramientas como Docker Compose y orquestadores como Kubernetes y Docker Swarm para simplificar la configuración, la gestión y el escalado de aplicaciones basadas en contenedores.

Distribución Eficiente:

Las imágenes de Docker pueden almacenarse y distribuirse fácilmente a través de repositorios como Docker Hub. Esto facilita compartir y distribuir aplicaciones junto con su entorno de ejecución.


## Docker network se refiere a la funcionalidad de Docker que permite a los contenedores comunicarse entre sí y con el mundo exterior. Permite la creación y gestión de redes para conectar contenedores, facilitando la comunicación y la colaboración entre ellos. Aquí hay algunos conceptos clave relacionados con Docker Network:

Tipos de Redes:

Bridge Network (Red de puente): Es la red predeterminada cuando se instala Docker. Los contenedores en una red de puente pueden comunicarse entre sí, y también pueden acceder a recursos fuera del host mediante la traducción de puertos.
Host Network (Red de host): Los contenedores comparten la red del host, sin aislamiento de red adicional.
Overlay Network (Red de superposición): Permite la comunicación entre contenedores en hosts diferentes. Es útil para la orquestación de contenedores en clústeres distribuidos.
Macvlan Network (Red de Macvlan): Permite asignar direcciones MAC y direcciones IP directamente a los contenedores, lo que los hace aparecer como dispositivos físicos en la red.
None Network (Red nula): Elimina la interfaz de red del contenedor, lo que lo aísla completamente de la red.

Comandos Básicos:

docker network ls: Lista las redes disponibles.
docker network create: Crea una nueva red.
docker network inspect: Proporciona información detallada sobre una red específica.
docker network connect: Conecta un contenedor a una red existente.
docker network disconnect: Desconecta un contenedor de una red.
Conexión de Contenedores:

Los contenedores pueden conectarse a una o más redes. La conexión a una red permite la comunicación entre contenedores en esa red, mientras que la desconexión los aislará de dicha red.

Exposición de Puertos:

Los contenedores pueden exponer puertos a través de la red para permitir la comunicación con servicios externos o con otros contenedores.

Orquestadores y Redes:

Herramientas de orquestación como Docker Compose, Docker Swarm y Kubernetes utilizan redes para facilitar la comunicación entre los servicios y contenedores en un entorno distribuido.

Gestión de Redes Personalizadas:

Puedes crear redes personalizadas para organizar y aislar aplicaciones. Esto es especialmente útil en entornos de desarrollo y producción donde se desean ciertas configuraciones de red.

Persistencia:

Las redes de Docker son persistentes. Los contenedores pueden ser eliminados y recreados, pero la red asociada permanece, lo que facilita la gestión a largo plazo.


## Comandos

    docker version
Muestra la versión de Docker que está instalada en tu sistema.

    docker info
Muestra la versión de Docker que está instalada en tu sistema.

    docker pull nombre-de-la-imagen:etiqueta
Descarga una imagen de Docker desde un registro de imágenes (por defecto, Docker Hub).


    docker images
Lista las imágenes de Docker que están almacenadas localmente en tu sistema.

    docker ps
Muestra los contenedores en ejecución.

    docker ps -a
Muestra todos los contenedores, incluyendo los que están detenidos.

    docker run -it --name mi-contenedor nombre-de-la-imagen:etiqueta
Crea y ejecuta un contenedor a partir de una imagen.
    
    docker exec -it mi-contenedor comando
Ejecuta un comando dentro de un contenedor en ejecución.

    docker stop mi-contenedor
    docker start mi-contenedor
Detiene y reinicia un contenedor.

    docker rm mi-contenedor
Elimina uno o más contenedores.

    docker rmi nombre-de-la-imagen:etiqueta
Elimina una o más imágenes de Docker.

    docker logs mi-contenedor
Muestra los logs de un contenedor.
    
    docker volume ls
    docker volume inspect nombre_del_volumen


    docker exec -it nombre_del_contenedor_mysql mysql -uroot -p
    docker exec -it nombre_del_contenedor_mysql mysql -uusuario -pcontraseña


## Comandos Docker compose

    docker-compose up 
    #  inicia los contenedores definidos en el archivo docker-compose.yml

    docker-compose up -d

    docker-compose down

    docker-compose ps

    docker-compose exec webserver ls -l
    #ejecuta comando ls dentro de servicio webserver

    docker-compose build
    #construye o reconstruye los servicios 

    docker-compose restart
    #reiniciar servicios

    docker-compose pull
    #Descarga las imágenes actualizadas definidas en el archivo docker-compose.yml


## Comandos para dockerfile

    docker build -t nombre-de-la-imagen:etiqueta -f ruta/al/Dockerfile .
Este comando asume que estás ubicado en el directorio que contiene tu aplicación y tu Dockerfile.
Docker utiliza ese contexto (el directorio actual y sus subdirectorios) para construir la imagen.
    
    docker run -p 8080:80 --name mi-contenedor mi-aplicacion:1.0
crear un contenedor basado en esa imagen y ejecutarlo

## Commandos para construir un Dockerfile

    FROM debian:bullseye
define imagen base que se va a usar para construir la nueva imagen

    COPY ./conf/setup.sh /tmp
Copia archivos desde la máquina host al sistema de archivos del contenedor.

    RUN apt-get update && apt-get install -y curl wget netcat tar
Ejecuta comandos durante la construcción de la imagen. En este caso, actualiza los paquetes y luego instala algunas herramientas

    CMD [ "sh", "-c", "./tmp/setup.sh && /usr/sbin/php-fpm7.4 -F" ]
Especifica el comando predeterminado que se ejecutará cuando se inicie un contenedor basado en la imagen.

    EXPOSE 9000
nforma a Docker que el contenedor escuchará en el puerto especificado durante la ejecución.

    WORKDIR /var/www/html
Establece el directorio de trabajo para los comandos RUN, CMD y ENTRYPOINT que siguen en el Dockerfile.

    ENV
        MYSQL_DATABASE=mydb \
        MYSQL_USER=myuser \
        MYSQL_PASSWORD=mypassword
Establece variables de entorno que estarán disponibles para el contenedor durante la construcción y ejecución.

    VOLUME /var/lib/mysql
Crea un punto de montaje para un volumen.

    LABEL version="1.0" \
      description="Mi aplicación Docker"
Agrega metadatos a la imagen, como la versión y la descripción.


    
