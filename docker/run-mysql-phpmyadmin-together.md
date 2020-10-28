## Use MySql in Docker
We can pull MySql image from docker hub and run image and use mysql without facing difficulties of installing mysql manually in our machine.

#### Run MySql in Docker
```
1. docker pull mysql:latest
2. docker run --name mysql-db -d -p 3306:3306 -e MYSQL_ROOT_PASSWORD=mukit mysql:latest
```
#### What is happening here
Command (1) pulls latest image of mysql from docker hub.
Command (2) gives a name `'mysql-db'` to the running container of mysql image. The option `-e` is used to pass a value 
for the container environment variable MYSQL_ROOT_PASSWORD and here the value is `'mukit'`. This variable is requested 
by the image to run properly and it will be assigned to the root password of MySQL. The option `-d` means that docker 
will run the container in the background in “detached” mode. `-p` tells the port where mysql will run.

#### Use MySql From Console
```
docker exec -it mysql-db /bin/bash

mysql -uroot -pmukit
```
##  Use PhpMyAdmin in Docker
Traditionally we may need to install xampp in our machine to use mysql and phpmyadmin but with the help of docker we can use image of them to use them together.

#### Pull PhpMyAdmin Image
```
1. docker pull phpmyadmin/phpmyadmin:latest
```

#### Connect PhpMyAdmin Container with MySql Container
```
2. docker run --name my-own-phpmyadmin -d --link mysql-db:db -p 8081:80 phpmyadmin/phpmyadmin
```
The option `--link` provides access to another container running in the host. In our case the container is the one created in the previous section, called `mysql-db`.
