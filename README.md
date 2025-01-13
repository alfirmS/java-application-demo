# Java Web Application with Embedded Tomcat

This is a web application in Java with Apache Tomcat embedded to the JAR (not WAR), called fat JAR. Other dependencies are also included in the JAR.

# Running the application
```
git clone git@github.com:alfirmS/java-application-demo.git
cd java-web-app-with-embedded-tomcat
mvn clean package && java -jar ./target/java-web-app-with-embedded-tomcat-1.0.0-SNAPSHOT.jar
```
Open your browser: http://localhost:8080/app

# Screenshots
## Home
![alt text](java-web-app-with-embedded-tomcat_1.PNG "Home")
## List of Books
![alt text](java-web-app-with-embedded-tomcat_2.PNG "List of Books")
## View a Book
![alt text](java-web-app-with-embedded-tomcat_3.PNG "View a Book")
