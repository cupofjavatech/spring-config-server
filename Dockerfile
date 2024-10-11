#Java Runtime
FROM openjdk:17-jdk-slim

LABEL key="Cup of Java Tech"

WORKDIR /app
VOLUME /app/config

COPY target/spring-config-server-0.0.1-SNAPSHOT.jar /app/spring-config-server-0.0.1-SNAPSHOT.jar
COPY src/main/resources/config/ /app/config

ENTRYPOINT ["java", "-jar", "spring-config-server-0.0.1-SNAPSHOT.jar" ]