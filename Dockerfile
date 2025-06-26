FROM openjdk:17-alpine
        
EXPOSE 8080
 
ENV APP_HOME /var/lib/docker

COPY target/*.jar $APP_HOME/app.jar

WORKDIR $APP_HOME

CMD ["java", "-jar", "app.jar"]
