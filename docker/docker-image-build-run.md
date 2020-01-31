# Build Image from Dockerfile and Run

## Build Image from DockerFile 
```
docker build -t frontend .
```
In this command `.` specifies root directory, `-t` specifies tag (or name) of the image.


## Run or Launching Container from Image
```
docker run -d -p host_os_port:container_os_port --name container_name img_name
```
For Example:
```
docker run -d -p 4200:8080 --name frontendrun frontend
```