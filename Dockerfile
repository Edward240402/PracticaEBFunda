FROM openjdk
COPY ./target/inmemory-0.0.1-SNAPSHOT.jar /usr/app/
WORKDIR /usr/app
RUN sh -c 'touch inmemory-0.0.1-SNAPSHOT.jar'
ENTRYPOINT ["java", "-jar", "inmemory-0.0.1-SNAPSHOT.jar"]
RUN ["chmod" , "+x", "/usr/app/inmemory-0.0.1-SNAPSHOT.jar"]