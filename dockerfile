FROM openjdk:11
EXPOSE 8020
ENTRYPOINT ["java","-jar","target/Frontend.jar"]
