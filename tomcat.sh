#!/bin/bash
#copy the pem file from local to bastion
Scp -i project1.pem project1.pem ec2-user@PublicIP:/home/ec2-user
#login to the tomcat from bastion and change permissions
Chmod 400 pemfile
#install the sun java
wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.rpm
# rpm 
rpm -ivh jdk-8u131-linux-x64.rpm
#install tomcat in /opt/
wget https://mirrors.estointernet.in/apache/tomcat/tomcat-9/v9.0.46/bin/apache-tomcat-9.0.46-windows-x64.zip
#extract
unzip downloaded file
#rename default name to tomcat
mv -f defaultname tomcat9
#change the permissions to tomcat9
Chmod -R 700 tomcat9
#start the tomcat from bin
./startup.sh
