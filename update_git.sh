#!/usr/bin/env bash

echo Updating Git Repositories

# Location of git repositories parent directory
location=$1

# List of all repositories to run 'git pull' on
repositories=$(cat ../repositories)

for r in ${repositories[@]}
do
	echo "-----------------------------------------------------------------------------------------"
	echo "Updating $r"
	echo "..."
	cd $location/$r
	git pull
done

