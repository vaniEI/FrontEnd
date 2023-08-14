FROM openjdk:17-jre-slim
WORKDIR /app
COPY target/SkyExchange-0.0.1-SNAPSHOT.jar .
EXPOSE 8761
CMD ["java", "-jar", "SkyExchange-0.0.1-SNAPSHOT.jar"]
