# run all exact solution test cases that don't take too long
exact_short ()
    {
        echo "----EXACT_SOLUTION_TESTS-_SHORT----"

        # run the sample input on exact solution to an output file and diff the results
        python ../cs412_max3sat_exact.py < inputs/sampleInput.txt > outputs/sampleOutput.txt
        exact_sample_output=$(diff outputs/sampleOutput.txt expected/sampleOutput.txt)
        # return result of diff
        if [ $? -eq 0 ]; then
            echo "exact given sample......PASS"
        else
            echo "exact given sample......FAIL"
        fi

        # runs input2 test
        python ../cs412_max3sat_exact.py < inputs/input2.txt > outputs/input2_output.txt
        exact_sample_output=$(diff outputs/input2_output.txt expected/input2_expected.txt)
        # return result of diff
        if [ $? -eq 0 ]; then
            echo "input2..................PASS"
        else
            echo "input2..................FAIL"
        fi

        # runs input3 test
        python ../cs412_max3sat_exact.py < inputs/input3.txt > outputs/input3_output.txt
        exact_sample_output=$(diff outputs/input3_output.txt expected/input3_expected.txt)
        # return result of diff
        if [ $? -eq 0 ]; then
            echo "input3..................PASS"
        else
            echo "input3..................FAIL"
        fi

        # runs input4 test
        python ../cs412_max3sat_exact.py < inputs/input4.txt > outputs/input4_output.txt
        exact_sample_output=$(diff outputs/input4_output.txt expected/input4_expected.txt)
        # return result of diff
        if [ $? -eq 0 ]; then
            echo "input4..................PASS"
        else
            echo "input4..................FAIL"
        fi

        echo ""
    }

exact_long()
    {
        echo "----EXACT_SOLUTION_TESTS-_LONG----"

        # runs input6 test for 20 mins +
        python ../cs412_max3sat_exact.py < inputs/input6.txt > outputs/input6_output.txt
        exact_sample_output=$(diff outputs/input6_output.txt expected/input6_expected.txt)
        # return result of diff
        if [ $? -eq 0 ]; then
            echo "input6..................PASS"
        else
            echo "input6..................FAIL"
        fi
    }
