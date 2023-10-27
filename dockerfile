# Use an official OpenJDK runtime as a parent image
FROM openjdk:17

# Set the working directory in the container
WORKDIR /app

# Copy the Maven POM and source code into the container
COPY pom.xml .
COPY src ./src

# Build the Maven project inside the container
RUN mvn clean install

# Specify the command to run your application
CMD ["java", "-jar", "target/*.jar"]




