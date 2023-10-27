#containerize this spring boot maven application

# Start with a base image containing Java runtime
FROM openjdk:8-jdk-alpine

#working directory
WORKDIR /home/ubuntu/app

# Add Maintainer Info
LABEL maintainer=""

# Add a volume pointing to /tmp
VOLUME /tmp

# Make port 8080 available to the world outside this container
EXPOSE 8080



