FROM eclipse-temurin:17-jdk-jammy
WORKDIR /app
COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:resolve
COPY src ./src
RUN ./mvnw package
EXPOSE 8080
CMD ["java", "-jar", "target/spring-petclinic-3.1.0-SNAPSHOT.jar"]
