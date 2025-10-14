#!/bin/bash 

USERID=$(id -u)

VALIDATE(){
    echo "Exit status : $1"
    echo "what are you doing :$2"
}

if [ $USERID -ne 0]
then
    echo "please run this script with root access."
    exit 1
else
    echo "you are super user"
fi

dnf install docker -y
VALIDATE $? "installing docker"

dnf install maven -y
VALIDATE $? "installing maven"

dnf install mysql -y
VALIDATE $? "installing MYSQL"

