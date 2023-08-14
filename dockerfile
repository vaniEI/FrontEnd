FROM openjdk:11-jre-slim
ARG JDK_PATH=/usr/lib/jvm/java-11-openjdk-amd64
ENV PATH=${JDK_PATH}/bin:$PATH
WORKDIR /app
COPY target/*.jar app.jar
EXPOSE 8761
CMD ["java", "-jar", "app.jar"]
