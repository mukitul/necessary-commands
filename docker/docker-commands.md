# Docker Commands

* [Frequently Used Commands](###Frequently-Used-Commands)
* [Build Image from DockerFile](###Build-Image-from-DockerFile)
* [Launching Container from Image](###Launching-Container-from-Image)
* [Use MySQL in Docker](###-Use-MySql-in-Docker)
    - [Run MySql in Docker](#####Run-MySql-in-Docker)
    - [What is happening here](#####What-is-happening-here)
    - [Use MySql From Console](#####Use-MySql-From-Console)
* [Use PhpMyAdmin in Docker](###Use-PhpMyAdmin-in-Docker)
    - [Pull PhpMyAdmin Image](#####Pull-PhpMyAdmin-Image)
    - [Connect PhpMyAdmin Container with MySql Container](#####Connect-PhpMyAdmin-Container-with-MySql-Container)

### Frequently Used Commands
- Pull any image: `docker pull <image-name:tag>`
- Show all images: `docker images`
- Show all running images (Containers): `docker ps`
- Kill all running containers: `docker kill $(docker ps -q)`
- Delete all containers (running or stopped): `docker rm -f $(docker ps -qa)`
- Delete stopped containers: `docker rm -v $(docker ps -a -q -f status=exited)`
- Delete all images: `docker rmi $(docker images -q)`
- Check the CPU, memory, and network I/O usage of a single container: `docker stats <container>`
- Get a Docker container's IP address from the host: `docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' container_name_or_id`

### Build Image from DockerFile 
```
docker build -t frontend .
```
In this command `.` specifies root directory, `-t` specifies tag (or name) of the image.


### Launching Container from Image
```
docker run -d -p host_os_port:container_os_port --name container_name img_name
```
For Example:
```
docker run -d -p 4200:8080 --name frontendrun frontend
```

### Use MySql in Docker
We can pull MySql image from docker hub and run image and use mysql without facing difficulties of installing mysql manually in our machine.

##### Run MySql in Docker
```
1. docker pull mysql:latest
2. docker run --name mysql-db -d -p 3306:3306 -e MYSQL_ROOT_PASSWORD=mukit mysql:latest
```
##### What is happening here
Command (1) pulls latest image of mysql from docker hub.
Command (2) gives a name `'mysql-db'` to the running container of mysql image. The option `-e` is used to pass a value 
for the container environment variable MYSQL_ROOT_PASSWORD and here the value is `'mukit'`. This variable is requested 
by the image to run properly and it will be assigned to the root password of MySQL. The option `-d` means that docker 
will run the container in the background in “detached” mode. `-p` tells the port where mysql will run.

##### Use MySql From Console
```
docker exec -it mysql-db /bin/bash

mysql -uroot -pmukit
```
###  Use PhpMyAdmin in Docker
Traditionally we may need to install xampp in our machine to use mysql and phpmyadmin but with the help of docker we can use image of them to use them together.

##### Pull PhpMyAdmin Image
```
1. docker pull phpmyadmin/phpmyadmin:latest
```

##### Connect PhpMyAdmin Container with MySql Container
```
2. docker run --name my-own-phpmyadmin -d --link my-mysql:db -p 8081:80 phpmyadmin/phpmyadmin
```
The option `--link` provides access to another container running in the host. In our case the container is the one created in the previous section, called `mysql-db`.
