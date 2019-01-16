#!/bin/bash

#update
sudo apt update -y && sudo apt upgrade -y


sudo apt install default-jdk -y && JAVA_VERSION=$(java -version)


if [ -n $JAVA_VERSION ]; then

  sudo wget https://www-eu.apache.org/dist/activemq/5.15.8/apache-activemq-5.15.8-bin.tar.gz

  sudo tar xvf apache-activemq-5.15.8-bin.tar.gz

  cd apache-activemq-5.15.8 && cd bin
 
  sudo ./activemq start
else
  echo "java is not installed"
fi


 
