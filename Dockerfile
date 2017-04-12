FROM frolvlad/alpine-oraclejdk8:slim
#RUN apt-get install python
VOLUME /tmp
ADD coding-facade-app.jar app.jar
RUN sh -c 'touch /app.jar'
EXPOSE 8080
#ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-DS3_SECRETS_BUCKET", "-DS3_SECRETS_KEY", "-jar", "/app.jar","--spring.config.location=/data/"]
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app.jar","--spring.config.location=/data/"]
