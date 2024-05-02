#! /usr/bin/bash

exact_sol=false
approx_sol=false
exact_long_sol=false

# check options
while getopts ":epal" option;
do
    case $option in
        e) exact_sol=true;; # the user wants the exact solution tests
        p) approx_sol=true;; # the user wants the approximate solution tests
        a) exact_sol=true
           approx_sol=true;; # the user wants to run all of the short solutions
        l) exact_long_sol=true;;
        \?) echo "Error: Invalid option";;
    esac
done

# run the exact solutions
if [ "$exact_sol" = true ]; then
    source exact_test_cases.sh
    exact_short
fi

# run the approximate solutions
if [ "$approx_sol" = true ]; then
    source approx_test_cases.sh
    approx_short
fi

# run the long exact solution
if [ "$exact_long_sol" = true ]; then
    source exact_test_cases.sh
    exact_long
fi
