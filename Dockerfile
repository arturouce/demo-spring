FROM openjdk:11.0.15-jre

WORKDIR /app/demo1

COPY ./pom.xml /app
COPY ./.mvn ./.mvn
COPY ./mvnw .
COPY ./pom.xml .

RUN chmod +x mvnw
RUN ./mvnw clean package -Dmaven.test.skip -Dmaven.main.skip && rm -r ./target/
RUN ./mvnw clean package -DskipTests

COPY ./src ./src

EXPOSE 8080

ENTRYPOINT ["java","-jar","./target/demo1-0.0.1-SNAPSHOT.jar"]