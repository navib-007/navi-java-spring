FROM oraclelinux:8.4
LABEL name=navi
RUN dnf install java-1.8.0-openjdk.x86_64  java-1.8.0-openjdk-devel.x86_64  maven git -y 
RUN mkdir /navi-java
WORKDIR /navi-java
RUN git clone https://github.com/navib-007/navi-java-spring.git 
WORKDIR navi-java-spring
# now running maven to create .war file 
RUN mvn clean package
