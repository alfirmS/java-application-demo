FROM maven:3.9-amazoncorretto-11-alpine as builder

COPY . .

RUN mvn clean package

FROM openjdk:11.0.16-slim-buster as runner

# Check versionjava & set timezone
RUN java -version \
    && cp /usr/share/zoneinfo/Asia/Jakarta /etc/localtime \
    && echo "Asia/Jakarta" > /etc/timezone \
    && mkdir /apps

# Initialization directory
WORKDIR /apps

# create user and set ownership and permissions
RUN adduser --disabled-password --gecos "" adm-app \
    && chown -R adm-app /apps
USER adm-app

# Expose Port Application
EXPOSE 8080

# Copy File Jar
COPY --from=builder ./target /apps/target
COPY --from=builder ./target/java-web-app-with-embedded-tomcat-1.0.0-SNAPSHOT.jar  /apps/java-web-app-with-embedded-tomcat-1.0.0-SNAPSHOT.jar

# Running Java Application With Kibana
ENTRYPOINT java \
           -Xms128m \
           -Xmx256m \
           -jar /apps/java-web-app-with-embedded-tomcat-1.0.0-SNAPSHOT.jar
