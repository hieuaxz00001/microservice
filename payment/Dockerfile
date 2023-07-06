FROM openjdk:17-oracle
LABEL maintainer="author@hieudx.com"
EXPOSE 8083
COPY target/payment-0.0.1-SNAPSHOT.jar payment.jar
ENTRYPOINT ["java","-Dspring.profiles.active=dev","-jar","/payment.jar"]