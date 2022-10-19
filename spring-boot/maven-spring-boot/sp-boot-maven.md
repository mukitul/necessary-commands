## Build Spring Boot Project with Maven From Command Prompt
Apache Maven is a popular build tool, that takes Spring Boot project’s source code, compiles it, tests it and converts it into an executable Java program: either a .jar or a .war file.Maven will put .jar or .war file in the "target" folder.

## Note

`clean` is not part of Maven’s default lifecycle. In Maven's lifecycle, these phases are there - validate, compile, test, package, verify, install and deploy.

### Maven Clean
```
mvn clean
```
This command will delete all previously compiled Java .class files and resources (like .properties) i.e. target folder of the project. This command will take the build phase of a project to a clean slate.

### Maven Package
```
mvn package
```
This command will validate, compile & test the Java project and put .jar/.war file into the "target" folder.

### Maven Install
```
mvn install
```
This command will validate, compile, test, package & verify the Java project and put .jar/.war file into the "target" folder. After that it takes that .jar/.war file and puts it into the local Maven repository, which lives in `~/.m2/` repository.

### Maven Clean Install
```
mvn clean install
```
This command will combine the behaviour of `mvn clean` and `mvn install` commands.


### Maven Clean Install and skipping Test Cases
```
mvn clean install -DskipTests
```


### Run Spring Boot app
```
java -jar Target/application-name-0.0.1-SNAPSHOT.jar
```