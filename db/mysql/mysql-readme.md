# MySQL README

## DOWNLOAD & INSTALLATION
- [Download MySQL Installer](https://dev.mysql.com/downloads/installer/)
- Install MySQL via Installer: Keep the default setting and proceed | Remember the password you set whlie installing MySQL | For help: [https://www.mysqltutorial.org/install-mysql/](https://www.mysqltutorial.org/install-mysql/)
- Set Environment Variable
  1. Variable: `MYSQL_HOME` | Value: `C:\Program Files\MySQL\MySQL Server 8.0`
  2. Add path: `%MYSQL_HOME%\bin`


## START MYSQL
- Start MySQL server from services

## CONFIGURATION RELATED COMMANDS
- Show maximum number of connections
  ```
  show variables like "max_connections";
  ```
- Set maximum number of connections
  ```
  SET GLOBAL max_connections = 20;
  ```
- Show number of thread connected
  ```
  show status where `variable_name` = 'Threads_connected';
  ```
- Show list of process
  ```
  show processlist;
  ```

## BASIC COMMANDS

- Login (default password: root)
    
  ```
  mysql -u root -p
  ```

- Show list of databases
    
  ```
  show databases;
  ```

- Select a databases
    
  ```
  use yourDatabaseName;
  ```

- Show list of tables
    
  ```
  show tables;
  ```