FROM openjdk:11
EXPOSE 8080
ADD target/Frontend.jar 
ENTRYPOINT ["java","-jar","/Frontend.jar"]
