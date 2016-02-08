FROM maven:3-jdk-7

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ADD pom.xml /usr/src/app/
RUN mvn dependency:go-offline

ADD . /usr/src/app
CMD ["./run.sh", "mongodb://mongo"]
