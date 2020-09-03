# For Java 8, try this
#FROM openjdk:8-jdk-alpine

# For Java 11, try this
#FROM adoptopenjdk/openjdk11:alpine-jre

# Refer to Maven build -> finalName
#ARG JAR_FILE=target/springboot-crud-0.0.1.jar

# cd /opt/app
#WORKDIR /opt/app

# cp target/spring-boot-web.jar /opt/app/app.jar
#COPY ${JAR_FILE} app.jar

# java -jar /opt/app/app.jar
#ENTRYPOINT ["java","-jar","app.jar"]

FROM tomcat:8.0.51-jre8-alpine
MAINTAINER Aruna
RUN rm -rf /usr/local/tomcat/webapps/*
ADD target/SpringBootWarDeployment.war /usr/local/tomcat/webapps/ROOT.war
