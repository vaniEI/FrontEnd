FROM maven:3.8.4-jdk-11 AS build
WORKDIR /app
COPY pom.xml .
RUN mvn dependency:go-offline
COPY src/ /app/src/
FROM openjdk:11-jre-slim
WORKDIR /app
COPY --from=build /app/target/SkyExchange-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8761
CMD ["java", "-jar", "app.jar"]
