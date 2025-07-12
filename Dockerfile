FROM eclipse-temurin:17-jdk-alpine
    
EXPOSE 8080

RUN ls 

ENV APP_HOME=/usr/src/app

RUN mkdir -p $APP_HOME

WORKDIR $APP_HOME

COPY target/*.jar $APP_HOME/app.jar

CMD ["java", "-jar", "app.jar"]
