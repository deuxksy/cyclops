FROM openjdk:11.0.8-jre-slim
LABEL maintainer="SeokYoung.Kim 'deuxksy@gmail.com'"
RUN ["pwd"]
RUN ["ls", "-alh"]
WORKDIR /app
RUN ["pwd"]
RUN ["ls", "-alh"]
COPY build/libs/*.jar .
ENTRYPOINT ["java", "-jar", "/app/zzizily-spring-cloud-config-server-latest.jar"]
EXPOSE 8888