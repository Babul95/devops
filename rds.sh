#!/bin/bash
#Connecto to the database from Bastion
#Install the mysql cli
yum install mysql
#Connecto the database host
mysql -h <endpoint> -u Username -p
#Create the database dev_petlinic
Create database dev_petlinic
#Create the user
CREATE USER 'dev_petclinicuser'@'%' IDENTIFIED BY 'b98eLkdGWz2dFGmmnbbzxq';
#grant privileges
GRANT ALL PRIVILEGES ON dev_petclinic.* TO 'dev_petclinicuser'@'%';
#FLUSH PRIVILEGES
FLUSH PRIVILEGES;


