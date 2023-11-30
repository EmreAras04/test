FROM openjdk:8-jdk-alpine
WORKDIR /app
COPY target/helloworld-1.0-SNAPSHOT.jar .
CMD ["java", "-jar", "app.jar"]
