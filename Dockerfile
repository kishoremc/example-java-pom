FROM tomcat:8
LABEL app=my-app
RUN apt-get update \
    && mv webapps webapps.bkp \
    && mv webapps.dist webapps
COPY target/*.jar /usr/local/tomcat/webapps/javajob.jar
