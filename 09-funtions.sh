#!/bin/bash

USERID=$(id -u)
Replace `if` with `fi` on line 12. The corrected function:

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2.....FAILURE"
        exit 1
    else
        echo "$2......SUCCESS"
    fi
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

dnf install git -y
VALIDATE $? "installing git"

dnf install maven -y 
VALIDATE $? "installing maven"
