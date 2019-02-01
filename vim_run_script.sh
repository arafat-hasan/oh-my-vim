#!/bin/bash
#Author: Arafat Hasan<opendoor.arafat[at]gmail[dot]com>
# 
#     ___          ___           ___                       ___     
#    /  /\        /  /\         /__/\        ___          /__/\    
#   /  /:/       /  /:/_        \  \:\      /  /\         \  \:\   
#  /__/::\      /  /:/ /\        \  \:\    /  /:/          \  \:\  
#  \__\/\:\    /  /:/ /:/_   _____\__\:\  /__/::\      _____\__\:\ 
#     \  \:\  /__/:/ /:/ /\ /__/::::::::\ \__\/\:\__  /__/::::::::\
#      \__\:\ \  \:\/:/ /:/ \  \:\~~\~~\/    \  \:\/\ \  \:\~~\~~\/
#      /  /:/  \  \::/ /:/   \  \:\  ~~~      \__\::/  \  \:\  ~~~ 
#     /__/:/    \  \:\/:/     \  \:\          /__/:/    \  \:\     
#     \__\/      \  \::/       \  \:\         \__\/      \  \:\    
#                 \__\/         \__\/                     \__\/    
# 

filename=$(basename "$2")
filename_without_ex=${filename%.*}
#filename_ex="${filename%.*}"
extension=${filename##*.}


if [ "$1" == "stdio" ]
then
    start=$(date +%s.%N)
    if [ "$extension" == "c" ] || [ "$extension" == "cpp" ]
    then
        ./a.out
    elif [ "$extension" == "java" ]
    then
        java Main
        #java $filename_without_ex
    fi
    return=$?
    dur=$(echo "$(date +%s.%N) - $start" | bc)
    echo
    echo "--------------------------------"
    echo "Program exited with code: $return"
    printf "Execution time: %.6f seconds" $dur
    echo
    #echo "What's about Jenin? :-)"
    echo "Press return to continue..."
    dummy_var=""
    read dummy_var


elif [ "$1" == "i" ]
then
    #echo
    #echo "==============================================="
    #echo "Input from input.txt and write output to stdout"
    #echo "==============================================="
    start=$(date +%s.%N)
    
    if [ "$extension" == "c" ] || [ "$extension" == "cpp" ]
    then
        ./a.out < input.txt
    elif [ "$extension" == "java" ]
    then
        java Main < input.txt
        #java $filename_without_ex < input.txt
    fi
 
    return=$?
    dur=$(echo "$(date +%s.%N) - $start" | bc)
    echo
    echo "--------------------------------"
    echo "Program exited with code: $return"
    printf "Execution time: %.6f seconds" $dur
    echo
    #echo "What's about Jenin? :-)"
    echo "Press return to continue..."
    dummy_var=""
    read dummy_var


elif [ "$1" == "io" ]
then
    echo
    #echo "==================================================="
    echo "Input from input.txt and write output to output.txt"
    #echo "==================================================="
    echo "Running..."
    start=$(date +%s.%N)
    
    if [ "$extension" == "c" ] || [ "$extension" == "cpp" ]
    then
        ./a.out < input.txt > output.txt
    elif [ "$extension" == "java" ]
    then
        java Main < input.txt > output.txt
        #java $filename_without_ex < input.txt > output.txt
    fi

    return=$?
    dur=$(echo "$(date +%s.%N) - $start" | bc)
    echo
    echo "Completed"
    echo
    echo "--------------------------------"
    echo "Program exited with code: $return"
    printf "Execution time: %.6f seconds" $dur
    echo
    #echo "What's about Jenin? :-)"
    echo "Press return to continue..."
    dummy_var=""
    read dummy_var


elif [ "$1" == "compile-build" ]
then
    echo
    g++ -g -Wall -Wextra -Wshadow -Wfloat-equal -pedantic -std=c++11 -O2 -Wformat=2 -Wconversion -lm "$2"
    return=$?
    if [ $return -eq 0 ]
    then
        echo "----------------------------------------------"
        echo "Compilation and building finished successfully"
    else
        echo "----------------------------------"
        echo "Error occurred, compilation failed"
    fi
    echo
    
elif [ "$1" == "compile" ]
then
    echo
    if [ "$extension" == "cpp" ]
    then
        g++ -c -g -Wall -Wextra -Wshadow -Wfloat-equal -pedantic -std=c++11 -O2 -Wformat=2 -Wconversion -lm "$2"
    elif [ "$extension" == "c" ]
    then
        gcc -c -g -Wall -Wextra -Wshadow -Wfloat-equal -pedantic -std=c++11 -O2 -Wformat=2 -Wconversion -lm "$2"
    elif [ "$extension" == "java" ]
    then
        javac -d /media/Softwares/Programming "$2"
     fi
    return=$?
    if [ $return -eq 0 ]
    then
        echo "---------------------------------"
        echo "Compilation finished successfully"
    else
        echo "----------------------------------"
        echo "Error occurred, compilation failed"
    fi
    echo

else
    echo "vim_run_script ERROR"

fi
