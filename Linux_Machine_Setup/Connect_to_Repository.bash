#!/bin/bash
#Name: Connect_to_Repository
#The purpose of this script is to connect a Linux Machine to the repository.
#Created: 10/30/2026
#Last Updated: 10/30/2026
#Created by: Lily K
#Last Updated by: Lily K

#Variables
hostname=hostname
check=systemd status git 
name= "name"
email= "email"

#Communication for User
echo "Now running Connected_to_Repository Script for Machine $hostname"

#Git connection
echo "Checking for Git Installation..."
if [$check = "service not found"]
echo "Installing Git"
apt install git
else
echp "Git is installed"
fi

git remote add origin https://github.com/Be-Bot-Be/Linux_Scripting_Project.git

#GitHub Sign-In
echo "sign in..."
echo "Name:"
read $name
echo "email:"
read $email

git config user.name $name
git config user.email $email

exit