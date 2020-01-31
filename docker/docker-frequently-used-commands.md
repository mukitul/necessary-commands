# Frequently Used Commands

- Pull any image: 
    
    `docker pull <image-name:tag>`
- Show all images:

     `docker images`
- Show all running Containers: 

    `docker ps`
- Show all STOPPED or RUNNING containers: 

    `docker ps -a`
- Start a STOPPED container: 

    `docker start container-name`
- Kill all running containers: 

    `docker kill $(docker ps -q)`
- Delete all containers (running or stopped): 

    `docker rm -f $(docker ps -qa)`
- Delete stopped containers: 

    `docker rm -v $(docker ps -a -q -f status=exited)`
- Delete all images: 

    `docker rmi $(docker images -q)`
- Check the CPU, memory, and network I/O usage of a single container: 

    `docker stats <container>`
- Get a Docker container's IP address from the host: 

    `docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' container_name_or_id`