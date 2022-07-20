FROM openjdk:11.0.15-jre

WORKDIR /app

COPY ./target/demo1-0.0.1-SNAPSHOT.jar .

EXPOSE 8080

ENTRYPOINT ["java","-jar","demo1-0.0.1-SNAPSHOT.jar"]