FROM openjdk:11-jre-slim
WORKDIR /app
COPY /app/target/SkyExchange-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8761
CMD ["java", "-jar", "app.jar"]
