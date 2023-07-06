FROM openjdk:17-oracle
LABEL maintainer="author@hieudx.com"
EXPOSE 8082
COPY target/user_sevice-0.0.1-SNAPSHOT.jar user_sevice.jar
ENTRYPOINT ["java","-Dspring.profiles.active=dev","-jar","/user_sevice.jar"]