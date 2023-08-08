FROM openjdk:11
EXPOSE 8020
ENTRYPOINT ["java","-jar","/SkyExchange-0.0.1-SNAPSHOT.jar"]
