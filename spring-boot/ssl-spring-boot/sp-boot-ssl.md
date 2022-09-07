To establish a secure connection with Spring-Boot app with any other server (Ex.: DB cluster), the server needs to provide two files to the Spring-Boot app, these files are
* `.pem file`: this file will contain `client private key` with `client certificate`
* `.crt file`: this file `root certificate`

For Java/Spring-Boot app, needs to convert these two files into jks files. Steps for this process are given below:

1) Convert `.pem` file to `.jks`: It is a two step process - 
    - a)  `.pem` to `.pkcs12`: 
    ``` 
    openssl pkcs12 -export -out keystore.pkcs12 -in your-pem-file.pem
    ```
    - b) `.pkcs12` to `.jks`: 
    ``` 
    keytool -importkeystore -srckeystore keystore.pkcs12 -srcstoretype PKCS12 -destkeystore keystore.jks -deststoretype JKS
    ```

2) Convert `.crt` file to `.jks`:
    ``` 
    keytool -importcert -trustcacerts -file your-root-ca-file.crt -keystore certstore.jks -storepass 123456
    ```

Keep `keystore.jks` (generated in step 1) and `certstore.jks` (generated in step 2) in Java/Spring-Boot application directory and do following things in your driver class:
```
System.setProperty("javax.net.ssl.keyStore",
				"/{classpath}/keystore.jks");

System.setProperty("javax.net.ssl.keyStorePassword", "password while generating this jks file");
		

System.setProperty("javax.net.ssl.trustStore",
				"/{classpath}/certstore.jks");

System.setProperty("javax.net.ssl.trustStorePassword", "password while generating this jks file");
```
