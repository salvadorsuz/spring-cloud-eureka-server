FROM openjdk:8-jdk-alpine
VOLUME /tmp

ARG JAR_FILE
COPY target/${JAR_FILE} /myservice.jar

ENTRYPOINT ["java","-jar","/myservice.jar"]
