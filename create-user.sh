#!/bin/bash
# Create a new user and set a password

USERNAME=$1
PASSWORD=$2

useradd -m "$USERNAME"
echo "$USERNAME:$PASSWORD" | chpasswd
echo "User $USERNAME created."

