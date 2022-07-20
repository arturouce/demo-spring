FROM openjdk:11.0.15-jre

WORKDIR /app/demo1

COPY ./pom.xml /app
COPY ./demo1/.mvn ./.mvn
COPY ./demo1/mvnw .
COPY ./demo1/pom.xml .

RUN chmod +x mvnw
RUN ./mvnw clean package

EXPOSE 8080

ENTRYPOINT ["java","-jar","./target/demo1-0.0.1-SNAPSHOT.jar"]