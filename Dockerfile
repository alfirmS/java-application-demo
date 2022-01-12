FROM openjdk:11.0.13-jre
WORKDIR /app/java
COPY . . /app/java
CMD [ "java", "-jar", "/app/java/target/java-web-app-with-embedded-tomcat-1.0.0-SNAPSHOT.jar"]
