FROM ubuntu:18.04

LABEL author="MG8853" maintainer="TeamFelNull"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update -y && apt -y install maven openjdk-8-jdk

RUN mvn -B clean && mvn -B package --file pom.xml