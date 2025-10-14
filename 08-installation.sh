#!/bin/bash 

USERID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2....failure"
        exit 1
    fi
    else 
        echo "$2...success"
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

