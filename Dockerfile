FROM java:8-jdk-alpine

COPY /target/Project2-0.0.1-SNAPSHOT.jar /project-two.jar

CMD ["java","-jar","project-two.jar"]
