FROM openjdk:17-oracle
LABEL maintainer="author@hieudx.com"
EXPOSE 8081
COPY target/centralize_config-0.0.1-SNAPSHOT.jar centralize_config.jar
ENTRYPOINT ["java","-Dspring.profiles.active=dev","-jar","/centralize_config.jar"]