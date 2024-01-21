FROM openjdk:17

WORKDIR /app

ARG JAR_FILE=target/k8s-1.0-SNAPSHOT.jar

COPY ${JAR_FILE} k8s.jar

EXPOSE 8081

ENTRYPOINT ["java", "-jar", "k8s.jar"]