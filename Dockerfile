FROM openjdk:8
COPY target/cit-0.0.1-SNAPSHOT.jar cit-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "/cit-0.0.1-SNAPSHOT.jar"]
