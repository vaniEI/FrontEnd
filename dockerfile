FROM openjdk:11-jre-slim
WORKDIR /app
COPY *.jar app.jar
EXPOSE 8761
CMD ["java", "-jar", "app.jar"]
