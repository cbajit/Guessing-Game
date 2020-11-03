#!/usr/bin/env bash

function guess_num_files 
{
    got_it=0
    while [[ $got_it -eq 0 ]]
    do
        echo "Enter your guess for the number of files in the current directory: "
        read user_input
        if [[ $user_input =~ ^\s*$ || $user_input =~ [^0-9]+ ]]
        then
            echo "Your input should be a non-negative integer"
        elif [[ $user_input -gt $1 ]]
        then
            echo "Too high!"
        elif [[ $user_input -lt $1 ]]
        then
            echo "Too low!"
        else
            echo "You got it! Congratulations!!!"
            let got_it=1
        fi
    done
}

file_count=$(ls -1A | wc -l)
guess_num_files file_count