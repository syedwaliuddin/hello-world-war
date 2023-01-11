FROM maven:3.8.2-openjdk-8 as build_stage
COPY . .
RUN mvn clean package

FROM tomcat
COPY --from=build_stage /target/hello-world-war-null.war /usr/local/tomcat/webapps/
