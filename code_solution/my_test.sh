#! /usr/bin/bash

echo "Test with 3 variables 2 clauses"

time python3 cs412_max3sat_approx.py < test_cases/inputs/sampleInput.txt > approx_output.txt

echo "Test with 4 variables and 3 clauses"

time python3 cs412_max3sat_approx.py < test_cases/inputs/input2.txt > approx_output.txt

echo "Test with 3 variables and 8 clauses"

time python3 cs412_max3sat_approx.py < test_cases/inputs/input3.txt > approx_output.txt

echo "Test with 5 variables and 68 clauses"

time python3 cs412_max3sat_approx.py < test_cases/inputs/input4.txt > approx_output.txt

echo "Test with 10 variables and 262 clauses"

time python3 cs412_max3sat_approx.py < test_cases/inputs/input5.txt > approx_output.txt

echo "Test with 36 variables and 17 clauses"

time python3 cs412_max3sat_approx.py < test_cases/inputs/input6.txt > approx_output.txt
