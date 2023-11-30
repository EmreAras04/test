FROM openjdk:8-jdk-alpine
WORKDIR /app
COPY target/monapplication-1.0-SNAPSHOT.jar app.jar
CMD ["java", "-jar", "app.jar"]
