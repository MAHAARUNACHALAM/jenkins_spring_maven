
FROM maven:3.8.4-openjdk-17

WORKDIR /app


COPY pom.xml .
COPY src ./src

RUN mvn clean install

EXPOSE 8080
CMD ["java", "-jar", "target/*.jar"]
