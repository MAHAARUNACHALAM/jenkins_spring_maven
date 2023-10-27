FROM openjdk:8-jdk-alpine

COPY --from=build /opt/app/target/*.jar app.jar

ENV PORT 8080

EXPOSE $PORT

ENTRYPOINT ["java","-jar","-Xmx1024M","-Dserver.port=${PORT}","app.jar"]



