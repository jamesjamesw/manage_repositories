#!/usr/bin/env bash

echo Cloning Git Repositories

# CLI argument for github username
username=$1

# Location to clone repositories to
location=$2

# List of repositories to clone
repositories=$(cat ./repositories)

for r in ${repositories[@]}
do
	echo "-----------------------------------------------------------------------------------------"
	echo "Cloning $r"
	echo "..."
	git clone git@github.com:$username/$r.git $location/$r
done

