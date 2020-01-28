# Docker file for Spring Boot Application

### Dockerfile
```
FROM openjdk:8-jdk-alpine
EXPOSE 8084
WORKDIR /app
COPY target/application-name-0.0.1-SNAPSHOT.jar .
ENTRYPOINT [ "java", "-jar", "application-name-0.0.1-SNAPSHOT.jar" ]
```
Create a file named as `Dockerfile` in the root directory of your application and paste the above code in the file.

### Description
