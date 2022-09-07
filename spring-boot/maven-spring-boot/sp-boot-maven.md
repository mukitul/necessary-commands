## Build Spring Boot Project with Maven From Command Prompt

### Maven build with test cases
```
mvn install
```
or
```
mvn clean install
```

### Maven build skipping test cases
```
mvn install -DskipTests
```

## What Above commands does?
Above commands will create a jar file in Target folder of application.

### Run Spring Boot app
```
java -jar Target/application-name-0.0.1-SNAPSHOT.jar
```