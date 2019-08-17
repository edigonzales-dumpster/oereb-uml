FROM adoptopenjdk/openjdk8

MAINTAINER stefan.ziegler.de@gmail.com

ENV PLANTUML_VERSION=1.2019.8

RUN apt-get update && \
  apt-get -y install graphviz wget ca-certificates && \
  wget "http://downloads.sourceforge.net/project/plantuml/${PLANTUML_VERSION}/plantuml.${PLANTUML_VERSION}.jar" -O plantuml.jar 

ENV LANG en_US.UTF-8

ENTRYPOINT ["java", "-Djava.awt.headless=true", "-jar", "plantuml.jar", "-p"]

CMD ["-tsvg"]
