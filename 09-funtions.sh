#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]

then
    echo " please run this script with root access"
    exit 1
else
    echo "you are super user "
fi 

dnf install mysql -y 
VALIDATE $? "installing MYSQL."

dnf install git -y
VALIDATE $? "installing git"

dnf install maven -y 
VALIDATE $? "installing maven"
