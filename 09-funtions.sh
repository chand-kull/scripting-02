#!/bin/bash

USERID=$(id -u)

VALIDATE(){
    
}

if [ $USERID -ne 0 ]

then
    echo " please run this script with root access"
    exit 1
else
    echo "you are super user "
fi 


dnf install mysql -y 
VALIDATE $? "installing MYSQL."

dnf install docker -y
VALIDATE $? "installing docker"
