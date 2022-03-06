#!/usr/bin/env bash

echo Updating Git Repositories

# List of all repositories to run 'git pull' on
repositories=("tequilatrader" "shellprogramming" "Gruvest" "ostep-code" "TicTacToeBoard" "oracle-operator" "accelerometer-reader" "AVL-HashTable" "galaxy-wallpaper" "playground")

for r in ${repositories[@]}
do
	echo "-----------------------------------------------------------------------------------------"
	echo "Updating $r"
	echo "..."
	cd $r
	git pull
	cd ..
done

