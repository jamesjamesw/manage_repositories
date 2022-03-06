#!/usr/bin/env bash

echo Creating Git Repositories

# CLI argument for github username
username=$1

# List of local directories to be turned into git repositories
directories=("tequilatrader" "shellprogramming" "Gruvest" "ostep-code" "TicTacToeBoard" "oracle-operator" "accelerometer-reader" "AVL-HashTable" "galaxy-wallpaper" "playground")

for d in ${directories[@]}
do
	echo "-----------------------------------------------------------------------------------------"
	echo "Creating Git Repository for $r"
	echo "..."
	cd $d
	#sudo rm -r .git
	git init
	git remote add origin git@github.com:$username/$d.git
	git add .
	git commit -m "Initial commit."
	git push -u origin master
	cd ..
done

