FROM openjdk:11
EXPOSE 8020
ENTRYPOINT ["java","-jar","/Frontend.jar"]
