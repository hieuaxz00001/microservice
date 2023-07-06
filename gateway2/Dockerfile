FROM openjdk:17-oracle
LABEL maintainer="author@hieudx.com"
EXPOSE 8081
COPY target/gateway2-0.0.1-SNAPSHOT.jar gateway2.jar
ENTRYPOINT ["java","-Dspring.profiles.active=dev","-jar","/gateway2.jar"]