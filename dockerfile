FROM openjdk:11-jre-slim
WORKDIR /app
ARG JDK_PATH=/usr/lib/jvm/java-11-openjdk-amd64
ENV PATH=${JDK_PATH}/bin:$PATH
COPY target/*.jar .
EXPOSE 8761
CMD ["java", "-jar", "*.jar"]
