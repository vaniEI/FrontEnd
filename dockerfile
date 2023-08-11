FROM maven:3.8.4-jdk-11 AS build
WORKDIR /app
COPY pom.xml .
RUN mvn dependency:go-offline
COPY src/ /app/src/
RUN mvn package -DskipTests
FROM openjdk:11-jre-slim
WORKDIR /app
COPY --from=build /app/target/your-app-name.jar app.jar
EXPOSE 8020
CMD ["java", "-jar", "app.jar"]
