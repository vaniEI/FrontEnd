FROM openjdk:17-jdk
WORKDIR /app
COPY target/SkyExchange-0.0.1-SNAPSHOT.jar .
EXPOSE 7074
CMD ["java", "-jar", "SkyExchange-0.0.1-SNAPSHOT.jar"]
