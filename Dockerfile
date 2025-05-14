FROM maven AS build

WORKDIR /project

COPY ./src /project/src
COPY pom.xml /project

RUN mvn package

FROM openjdk:17-alpine

COPY --from=build /project/target/webGame-1.0.jar application.jar

CMD java -jar /application.jar --spring.profiles.active=docker