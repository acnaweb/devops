#!/bin/bash

echo "Installing Sonar Scanner"

# https://docs.sonarsource.com/sonarqube/9.9/analyzing-source-code/scanners/sonarscanner/

export SONAR_RUNNER_HOME=/opt/sonar-scanner
export SONAR_FILE=sonar-scanner-cli-5.0.1.3006-linux.zip
export SONAR_FOLDER=/opt/sonar-scanner-5.0.1.3006-linux

wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/$SONAR_FILE
unzip -o $SONAR_FILE -d /opt
mv $SONAR_FOLDER $SONAR_RUNNER_HOME
chown -R jenkins:jenkins $SONAR_RUNNER_HOME
ln -fs $SONAR_RUNNER_HOME/bin/sonar-scanner /usr/local/bin

echo "Finished Sonar Scanner"
