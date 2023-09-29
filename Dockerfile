FROM maven:3.9.4-eclipse-temurin-17 as build
WORKDIR /app
COPY . .
RUN mvn clean install

FROM eclipse-temurin:17.0.8.1_1-jre-alpine as run
WORKDIR /app
COPY --from=build /root/.m2/repository/com/demo/demo/0.0.1-SNAPSHOT/demo-0.0.1-SNAPSHOT.jar app.jar
CMD java -jar app.jar