FROM maven:3-jdk-7

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ADD pom.xml /usr/src/app/
RUN mvn -B -T 1C dependency:go-offline dependency:resolve-plugins

ADD . /usr/src/app
CMD ["./run.sh", "mongodb://mongo"]
