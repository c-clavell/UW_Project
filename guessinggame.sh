#!/usr/bin/env bash



function read_input_func {
    echo "How many files are in the current directory?"
    read input1
}



read_input_func


total=$(ls | wc -l)


while [ $input1 -ne $total ]
do

    if [[ $input1 -gt $total ]]
    then 
        echo "Value to high! Guess again!"
        read_input_func

    elif [[ $input1 -lt $total ]]
    then 
        echo "Value to low! Guess again!"
        read_input_func
        
    fi

done

echo "$total files. Correct answer!"
