# This is Jenkins Image,Base on Centos6.
# Version 1.0


FROM daocloud.io/library/centos:6

MAINTAINER tangchengwei@mftour.cn

RUN useradd -d /var/jenkins_home jenkins && \

mkdir /opt/jenkins && \ 

mkdir -p /data/jenkins/{home,war} && \

yum -y install git && \

yum -y install glibc-common && \

echo "LANG="zh_CN.UTF-8"" > /etc/sysconfig/i18n && yum clean all 

COPY jenkins.war /opt/jenkins/jenkins.war

COPY jenkins.sh /usr/local/bin/jenkins.sh

ADD maven.tar.gz /usr/local/

ADD jdk.tar.gz /usr/local/

ENV JAVA_HOME /usr/local/jdk

ENV PATH $PATH:$JAVA_HOME/bin:/usr/local/maven/bin

RUN chown -R jenkins.jenkins /opt/jenkins /data/jenkins 

USER jenkins

EXPOSE 8080 50000 22

CMD ["/bin/bash","/usr/local/bin/jenkins.sh"]

