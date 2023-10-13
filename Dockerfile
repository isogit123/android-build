FROM ubuntu

RUN apt update && apt install curl unzip openjdk-17-jdk openjdk-17-jre -y && apt clean

COPY setup-android-sdk.sh .

RUN chmod +x setup-android-sdk.sh

RUN /setup-android-sdk.sh