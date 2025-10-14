#!/bin/bash

USERID=$(id -u)

VALIDATE()

if [ $USERID -ne 0 ]
then
    echo "please run this script with root access"
    exit 1
else
    echo "you are super user."
fi

dnf install git -y
VALIDATE $? "INSTALLING GIT"

dnf install mysql-server -y
VALIDATE $? "INSTALLING MYSQL"

 
dnf install docker -y
VALIDATE $? "INSTALLING DOCEKR "
  
dnf install maven -
VALIDATE $? "INSTALLING MAVEN "
