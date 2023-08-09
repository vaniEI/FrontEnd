FROM openjdk:11
WORKDIR /app
COPY target/SkyExchange-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8761
CMD ["sleep", "-jar", "app.jar"]
