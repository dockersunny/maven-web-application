FROM maven:3.8.6-openjdk-18 as build
WORKDIR /app
COPY . .
RUN mvn clean package

FROM tomcat:8.0.20-jre8
COPY target/maven-web-app*.war /usr/local/tomcat/webapps/maven-web-application.war
