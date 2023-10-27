
FROM openjdk:17


WORKDIR /app

COPY pom.xml .
COPY src ./src


RUN apt-get update
RUN apt-get install -y maven

RUN mvn clean install

EXPOSE 8080
CMD ["java", "-jar", "target/*.jar"]




