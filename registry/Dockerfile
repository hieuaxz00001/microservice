FROM openjdk:17-oracle
LABEL maintainer="author@hieudx.com"
EXPOSE 8761
COPY target/registry-0.0.1-SNAPSHOT.jar registry.jar
ENTRYPOINT ["java","-Dspring.profiles.active=dev","-jar","/registry.jar"]