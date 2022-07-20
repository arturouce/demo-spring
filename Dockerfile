FROM openjdk:11.0.15-jre

WORKDIR /app/demo1

COPY ./pom.xml /app

RUN ./mvnw clean package

EXPOSE 8080

ENTRYPOINT ["java","-jar","./target/demo1-0.0.1-SNAPSHOT.jar"]