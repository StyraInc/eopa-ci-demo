FROM eclipse-temurin:17-jdk-alpine as build
WORKDIR /workspace/app
COPY . .
RUN ./mvnw --no-transfer-progress package -DskipTests

FROM eclipse-temurin:17-jdk-alpine
RUN addgroup -S demo && adduser -S demo -G demo
USER demo
WORKDIR application
COPY --from=build /workspace/app/target/spring-security-opa-authz-1.0-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar", "app.jar"]
