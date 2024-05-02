# MAX 3-SAT Project
Elizabeth Johnson and Liam Herkins

## Run the test cases from the test_cases folder:
### make test case files executable
chmod u+x approx_test_cases.sh
chmod u+x exact_test_cases.sh
chmod u+x run_test_cases.sh

### run test case script
./run_test_cases.sh

Note: you have to run the script with one or more options:
- "-e" runs the short exact solution test cases
- "-l" runs the long exact solution test cases
- "-p" runs the short approximate solution test cases
- "-a" runs the short exact and approximate solution test cases

### inputs:
Short tests:
1. sampleInput.txt is the given sample input
2. input2.txt is all true
3. input3.txt satifies 7/8 clauses
4. input4.txt shows that the number of clauses does not make much of a difference on runtime

