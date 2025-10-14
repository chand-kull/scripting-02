#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Please run this script with root access."
    exit 1
else
    echo "You are the super user."
fi

install_package() {
    PACKAGE=$1
    echo "Installing $PACKAGE..."
    yum install -y $PACKAGE

    if [ $? -ne 0 ]; then
        echo "Installation of $PACKAGE ..... failure"
        exit 1
    else
        echo "Installation of $PACKAGE ........ success."
    fi
}

# Install required packages
install_package git
install_package mysql
install_package docker
install_package maven
