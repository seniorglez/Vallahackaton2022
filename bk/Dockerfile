#
# Build stage
#
FROM maven:3.6.0-jdk-11-slim AS build
COPY ./adanator/settings.xml /root/.m2/settings.xml
COPY ./adanator/src /home/app/src
COPY ./adanator/pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean compile assembly:single

#
# Package stage
#
# This thing works but I should check which one is the most convenient and if there is a jre16 is available
FROM openjdk:16.0.1-jdk-slim-buster
COPY --from=build /home/app/target/adanator-0.0.1.jar /usr/local/lib/adanator.jar
EXPOSE 8080
EXPOSE 25565
ENTRYPOINT ["java","-jar","/usr/local/lib/adanator.jar"]