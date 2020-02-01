# Docker file for Spring Boot Application

### Dockerfile
```
FROM openjdk:8-jdk-alpine
EXPOSE 8084
WORKDIR /app
COPY target/application-name-0.0.1-SNAPSHOT.jar .
ENTRYPOINT [ "java", "-jar", "application-name-0.0.1-SNAPSHOT.jar" ]
```
Create a file named as `Dockerfile` in the root directory of your spring boot project source code and paste the above code in the file.

This docker file successfully build image of spring boot application in `Linux` machine.

### Description
Instructions in the `Dockerfile` are processed from
the top down, so we should order them accordingly. Each instruction adds a new layer to the image we are building and then commits the image.

Docker executing instructions roughly as follows:

```
FROM openjdk:8-jdk-alpine 
```
The `FROM` instruction specifies the base image on which we will build our new image. Here our base image is `openjdk:8-jdk-alpine`.


``` 
EXPOSE 8084 
```
The `EXPOSE` instruction in `Dockerfile` would publish container on port `8084` on a random port on our local host.

```
WORKDIR /app
```
The `WORKDIR` instruction provides a way to set the working directory for the container and the `ENTRYPOINT` to be executed when a container is launched from the image. Here in our image working directory or root directory is `/app`.

```
COPY target/application-name-0.0.1-SNAPSHOT.jar .
```

The `COPY` instruction will copy the jar file of spring boot project into the root directory of the image we are building.
- How to get jar file of maven spring boot project: <a href="../../maven-spring-boot/sp-boot-maven.md" target="_blank">Solution</a>

```
ENTRYPOINT [ "java", "-jar", "application-name-0.0.1-SNAPSHOT.jar" ]
```

The `ENTRYPOINT` instruction provides a command which will execute when we launch container from this image. Here this command inside `ENTRYPOINT` is for runnig jar file inside container.
