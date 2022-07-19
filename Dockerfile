FROM adoptopenjdk/openjdk11:jre-11.0.6_10-alpine

ADD target/demo1-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080

ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]