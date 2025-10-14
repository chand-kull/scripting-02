#!/bin/bash

USERID=$(id -u)

VALIDATE(){

}

if [ $USERID -ne 0 ]
then
    echo "please run this script with root access"
    exit 1
else
    echo "you are super user."
fi

yum install git -y
VALIDATE $? "INSTALLING GIT"

yum install mysql-server -y
VALIDATE $? "INSTALLING MYSQL"

 
yum install docker -y
VALIDATE $? "INSTALLING DOCEKR "
  
yum install maven -
VALIDATE $? "INSTALLING MAVEN "
