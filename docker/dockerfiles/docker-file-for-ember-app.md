# Docker File for Ember App


### Dockerfile
```
FROM nginx:stable-alpine

COPY default.conf /etc/nginx/conf.d/

EXPOSE 8080

COPY dist /usr/share/nginx/html

ENTRYPOINT [ "nginx", "-g", "daemon off;" ]

```
Create a file named as `Dockerfile` in the root directory of your application and paste the above code in the file.

### Description
