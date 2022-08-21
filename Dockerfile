FROM openjdk:11-jdk-oracle
VOLUME /tmp
EXPOSE 8200
ADD target/MFPE-ChecklistMS-JAR.jar app.jar
ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar"]