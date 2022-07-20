FROM openjdk:11.0.15-jdk

WORKDIR /demo1

COPY ./pom.xml /demo1
COPY ./.mvn /demo1/.mvn
COPY ./mvnw /demo1
#COPY ./pom.xml /app/demo1

RUN chmod +x mvnw
RUN ./mvnw clean package -Dmaven.test.skip -Dmaven.main.skip -Dspring-boot.repackage.skip && rm -r ./target/

COPY ./src /demo1/src

RUN ./mvnw clean package -DskipTests

EXPOSE 8080

ENTRYPOINT ["java","-jar","./target/demo1-0.0.1-SNAPSHOT.jar"]