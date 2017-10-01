# Set the base image to centos
FROM centos

MAINTAINER Vladislav Socolov "socolov.vladislav@gmail.com"

RUN yum -y install wget

# Set the working directory to /app
WORKDIR /app

# Copy the project ROOT.war into the container at /app
ADD /webapps/ROOT.war /app

# Java env variables
ENV JAVA_VERSION 8u144
ENV BUILD_VERSION b01

# Downloading java
RUN wget --no-cookies --no-check-certificate --header "Cookie: oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/$JAVA_VERSION-$BUILD_VERSION/090f390dda5b47b9b721c7dfaa008135/jdk-$JAVA_VERSION-linux-x64.rpm" -O /tmp/jdk-8-linux-x64.rpm

# Install downloaded java
RUN yum -y install /tmp/jdk-8-linux-x64.rpm

# Set up JAVA_HOME environment variable
ENV JAVA_HOME /usr/java/jdk1.8.0_144
ENV PATH $JAVA_HOME/bin:$PATH

# Download and set up maven
RUN wget --no-cookies --no-check-certificate "http://www.mirrorservice.org/sites/ftp.apache.org/maven/maven-3/3.5.0/binaries/apache-maven-3.5.0-bin.tar.gz" -O /tmp/apache-maven-3.5.0-bin.tar.gz
RUN tar xzf /tmp/apache-maven-3.5.0-bin.tar.gz -C /opt/

# Set up M2_HOME environment variable
ENV M2_HOME /opt/apache-maven-3.5.0
ENV PATH $M2_HOME/bin:$PATH

# Download Tomcat 8
RUN wget "http://mirrors.ukfast.co.uk/sites/ftp.apache.org/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz" -O /tmp/apache-tomcat-8.5.20.tar.gz
RUN tar xzf /tmp/apache-tomcat-8.5.20.tar.gz -C /opt/

# Set up CATALINA_HOME environment variable
ENV CATALINA_HOME /opt/apache-tomcat-8.5.20
ENV PATH $CATALINA_HOME/bin:$PATH
RUN chmod +x ${CATALINA_HOME}/bin/*sh

# clean yum cache
RUN yum clean all
# Remove downloaded software from tmp folder
RUN rm -rf /tmp/jdk-8-linux-x64.rpm
RUN rm -rf /tmp/apache-maven-3.5.0-bin.tar.gz
RUN rm -rf /tmp/apache-tomcat-8.5.20.tar.gz

EXPOSE 8080

CMD ${CATALINA_HOME}/bin/catalina.sh run