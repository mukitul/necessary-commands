### Docker Commands


#### Common Commands
- Pull any image: `docker pull <image-name:tag>`
- Show all images: `docker images`
- Show all running images (Containers): `docker ps`
- Kill all running containers: `docker kill $(docker ps -q)`
- Delete all containers (running or stopped): `docker rm -f $(docker ps -qa)`
- Delete stopped containers: `docker rm -v $(docker ps -a -q -f status=exited)`
- Delete all images: `docker rmi $(docker images -q)`
- check the CPU, memory, and network I/O usage of a single container: `docker stats <container>`

#### Docker MySql
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

#### Docker PhpMyAdmin
```
1. docker pull phpmyadmin/phpmyadmin:latest
2. docker run --name my-own-phpmyadmin -d --link my-own-mysql:db -p 8081:80 phpmyadmin/phpmyadmin
```
The option `--link` provides access to another container running in the host. In our case the container is the one 
created in the previous section, called `mysql-db`.
