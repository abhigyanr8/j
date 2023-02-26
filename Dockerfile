FROM openjdk:11
COPY target/cit-0.0.1-SNAPSHOT.war cit-0.0.1-SNAPSHOT.war
ENTRYPOINT ["java", "-jar", "/cit-0.0.1-SNAPSHOT.war"]
