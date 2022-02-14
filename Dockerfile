FROM openjdk:11

RUN apt-get update && \
    apt-get install build-essential maven default-jdk cowsay netcat -y && \
    update-alternatives --config javac
COPY target/vsbp-0.0.1-SNAPSHOT.jar vsbp.jar
COPY target/aspectjweaver.jar aspectjweaver.jar
COPY target/AcuSensor.jar AcuSensor.jar

ENTRYPOINT [ "java", "-javaagent:aspectjweaver.jar", "-Dacusensor.debug.log=ON", "-Dloader.path=AcuSensor.jar", "-cp", "vsbp.jar",  "org.springframework.boot.loader.PropertiesLauncher" ]
