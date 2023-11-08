#FROM tomcat:8.0-alpine
#LABEL maintainer="chinniprashanth"
#ADD target/hello-world-war-1.0.0.war /usr/local/tomcat/webapps/
#EXPOSE 8080
#CMD ["catalina.sh", "run"]

FROM ubuntu
RUN apt-get update && apt-get install wget -y
RUN mkdir /usr/app
WORKDIR /usr/app
#RUN cd workspace
COPY game-of-life/gameoflife-build/target/gameoflife-build-1.0-SNAPSHOT.jar /usr/app
