#!/bin/bash

# Function to validate previous command
VALIDATE() {
    if [ $1 -ne 0 ]; then
        echo "❌ ERROR: $2 failed."
        exit 1
    else
        echo "✅ SUCCESS: $2 completed."
    fi
}

# Check if user is root
USERID=$(id -u)
if [ "$USERID" -ne 0 ]; then
    echo "⚠️  Please run this script with root access."
    exit 1
else
    echo "🔐 You are running as root (superuser)."
fi

# Install MySQL
yum install mysql -y
VALIDATE $? "Installing MySQL"
