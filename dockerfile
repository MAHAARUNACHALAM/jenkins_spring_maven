
FROM openjdk:17


WORKDIR /app

COPY pom.xml .
COPY src ./src

RUN sudo apt-get update && sudo apt-get install maven

RUN mvn clean install

EXPOSE 8080
CMD ["java", "-jar", "target/*.jar"]




