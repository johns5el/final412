# run all exact solution test cases that don't take too long
exact_short ()
    {
        echo "----EXACT_SOLUTION_TESTS----"

        # run the sample input on exact solution to an output file and diff the results
        python ../exact_solution.py < inputs/sampleInput.txt > outputs/sampleOutput.txt
        exact_sample_output=$(diff outputs/sampleOutput.txt expected/sampleOutput.txt)
        # return result of diff
        if [ $? -eq 0 ]; then
            echo "exact given sample......PASS"
        else
            echo "exact given sample......FAIL"
        fi

        # runs input2 test
        python ../exact_solution.py < inputs/input2.txt > outputs/input2_output.txt
        exact_sample_output=$(diff outputs/input2_output.txt expected/input2_expected.txt)
        # return result of diff
        if [ $? -eq 0 ]; then
            echo "input2..................PASS"
        else
            echo "input2..................FAIL"
        fi

        # runs input3 test
        python ../exact_solution.py < inputs/input3.txt > outputs/input3_output.txt
        exact_sample_output=$(diff outputs/input3_output.txt expected/input3_expected.txt)
        # return result of diff
        if [ $? -eq 0 ]; then
            echo "input3..................PASS"
        else
            echo "input3..................FAIL"
        fi

        # runs input4 test
        python ../exact_solution.py < inputs/input4.txt > outputs/input4_output.txt
        exact_sample_output=$(diff outputs/input4_output.txt expected/input4_expected.txt)
        # return result of diff
        if [ $? -eq 0 ]; then
            echo "input4..................PASS"
        else
            echo "input4..................FAIL"
        fi

        echo ""
    }
