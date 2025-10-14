#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "please run this script with root access"
    exit 1
else
    echo "you are super user."
fi

yum install git -y
if [ $? -ne 0 ]  
then
    echo "installation of git .....failure"
    exit 1
else 
    echo "installation of git ........success."    
fi

yum install mysql -y
if [ $? -ne 0 ]  
then
    echo "installation of mysql .....failure"
    exit 1
else 
    echo "installation of mysql ........success."    
fi
 
yum install docker -y
if [ $? -ne 0 ]  
then
    echo "installation of docker .....failure"
    exit 1
else 
    echo "installation of docker ........success."    
fi
  
yum install maven -y
if [ $? -ne 0 ]  
then
    echo "installation of maven .....failure"
    exit 1
else 
    echo "installation of maven ........success."    
fi
