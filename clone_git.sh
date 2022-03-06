#!/usr/bin/env bash

echo Cloning Git Repositories

# CLI argument for github username
username=$1

# List of all repositories to clone
repositories=("tequilatrader" "shellprogramming" "Gruvest" "ostep-code" "TicTacToeBoard" "oracle-operator" "accelerometer-reader" "AVL-HashTable" "galaxy-wallpaper" "playground")

for r in ${repositories[@]}
do
	echo "-----------------------------------------------------------------------------------------"
	echo "Cloning $r"
	echo "..."
	git clone git@github.com:$username/$r.git
done

