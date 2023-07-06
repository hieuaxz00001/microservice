FROM openjdk:17-oracle
LABEL maintainer="author@hieudx.com"
EXPOSE 8083
COPY target/core_bank-0.0.1-SNAPSHOT.jar core_bank.jar
ENTRYPOINT ["java","-Dspring.profiles.active=dev","-jar","/core_bank.jar"]