FROM openjdk:11
COPY target/cit-0.0.1-SNAPSHOT cit-0.0.1-SNAPSHOT
ENTRYPOINT ["java", "-jar", "/cit-0.0.1-SNAPSHOT"]
