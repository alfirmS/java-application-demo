FROM openjdk:11.0.13-jre
WORKDIR /app/java
COPY . .
CMD [ "java", "-jar", "target/java-web-app-with-embedded-tomcat-1.0.0-SNAPSHOT.jar"]
