# LINUX COMMANDS

### Kill any service
```
kill -9 $(lsof -t -i:PORT)
```

### Show all LISTENING/USED ports
```
netstat -tulnp | grep LISTEN
```

### Show Specific LISTENING/USED ports
```
netstat -tulnp | grep :YOUR_PORT_NUMBER
```

### Show Specific LISTENING/USED ports
```
lsof -i:PORT
```

### Manually run a JAR
```
nohup java -jar JAR_FILE_NAME.jar >/dev/null 2>&1 --spring.profiles.active=PROFILE_NAME &
```
#### Explanation of above commad
`nohup` - a short form for `no hang up`. This command prevents the processes from receiving the SIGHUP (Signal Hang Up) -  a signal which is sent to a process upon closing/existing/logout the terminal. So, `nohup` command keeps the process running even after exiting the terminal.

`>/dev/null 2>&1` - operator `>` is called a redirection operator. It redirects the output to the file specified after it. In this case the specified file is `/dev/null`. But all the output is not redirected to `/dev/null` becasue of the last part of the command, which is - `2>&1`, this part means redirect `STDERR(2)` to `STDOUT(1)`. [Detail Explanation is here: https://www.linuxshelltips.com/redirect-output-in-linux/](https://www.linuxshelltips.com/redirect-output-in-linux/)

`--spring.profiles.active=PROFILE_NAME` - using this we can pass on the profile name of spring boot application to run with.

`&` - this operator makes the command run in the background.

### Create a directory
```
mkdir DIRECTORY_NAME
```

### Copy file to other directory
```
cp filename destination-directory
```

### Copy files to other server
```
scp -p /source-directory-name username@host-address:/destination-directory-name
ex.: scp -p /folder-one/folder-two/* username@192.0.2.10:/data/documents
```