FROM openjdk:8-jdk-alpine
LABEL maintainer="alien-al"
COPY target/spring-petclinic-2.4.2.jar /petclinic.jar
ENTRYPOINT ["java", "-Dserver.port=9090", "-jar", "/petclinic.jar"]
EXPOSE 9090
