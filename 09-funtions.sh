#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]

then
    echo " please run this script with root access"
    exit 1
else
    echo "you are super user "
fi 


yum install mysql -y 
VALIDATE $? "installing MYSQL."

yum install docker -y
VALIDATE $? "installing docker."
