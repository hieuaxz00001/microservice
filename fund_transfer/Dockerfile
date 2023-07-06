FROM openjdk:17-oracle
LABEL maintainer="author@hieudx.com"
EXPOSE 8084
COPY target/fund_transfer-0.0.1-SNAPSHOT.jar fund_transfer.jar
ENTRYPOINT ["java","-Dspring.profiles.active=dev","-jar","/fund_transfer.jar"]