#!/bin/bash
#Name: Pull_From_Repository
#The purpose of this script is to pull the most recent scripts from the repository.
#Created: 10/30/2026
#Last Updated: 10/30/2026
#Created by: Lily K
#Last Updated by: Lily K

#Variables
hostname=hostname
fetch_count=git fetch
awns = "n"

#Communication for User
echo "Now running Pull_From_Repository Script for Machine $hostname"



echo "Updating Git Scripts..."

echo "You have following updates $fetch_count would you like to continue?(y/n)"
read $awns

if [$awns = "y"]
git pull
else
exit
fi

exit