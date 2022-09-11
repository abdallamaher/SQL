#!/bin/bash

varname=""

Take_Input() {
    # ask the user for their Problem
    echo Hello, What Is The Problem Name?
    read varname
    varname="${varname// /_}".sql
    touch ./$varname
    vi ./$varname
}

Call_Github() {
    git add .
    git status
    git commit -m $varname
    git push
}

Nums="0 1"
for var in $Nums
do
    if [ $var -eq 0 ]
    then
        Take_Input
    else
        Call_Github
    fi
done