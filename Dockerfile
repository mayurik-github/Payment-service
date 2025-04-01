FROM openjdk:17-jdk
WORKDIR /app
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} /app/payment-service.jar EXPOSE 8081
ENTRYPOINT ["java", "-jar", "/app/payment-service.jar"]