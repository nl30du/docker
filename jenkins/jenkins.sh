#!/bin/bash -e

export LANG="zh_CN.UTF-8"

JENKINS_HOME=/data/jenkins/home
JENKINS_WAR=/opt/jenkins
JENKINS_WEBROOT=/data/jenkins/war
HTTP_PORT=8080
AJP_PORT=8009


JAVACMD=/usr/local/jdk/bin/java

JENKINS_OPT="-Dcom.sun.akuma.Daemon=daemonized -Djava.awt.headless=true -DJENKINS_HOME=${JENKINS_HOME} -jar ${JENKINS_WAR}/jenkins.war --webroot=${JENKINS_WEBROOT}  --httpPort=${HTTP_PORT} --ajp13Port=${AJP_PORT} --debug=5 --handlerCountMax=100 --handlerCountMaxIdle=20"

if [ "$#" -lt 1 ];then

   ${JAVACMD} ${JENKINS_OPT}

fi
