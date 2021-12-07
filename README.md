The new updates have the expected test result file (calendar_expected.csv), and can verify the test case one by one,
they can catch bugs correctly.

https://github.com/subaru2010/Majorclarity
The new Updates Verify Test Results and Catch Bugs Correctly.
How to Run:
$ruby verify.rb

    test2_new.rb runs the test cases.
    calendarexpected.csv has the expected results for test cases in test2new.rb.
    test2_new.rb writes all the output to console.out.
    Verify.rb reads console.out line by line to get the actual test result for each test case,     
	Verify.rb reads the calendar_expected.csv based on the test case number, and compare with the expected result.     
	If the actual result doesn't match with the expected result. It will return the "Failed".

From the following result, Test Case7 and Test Case10 Failed.

Test Case7 There is an offsite meeting, which is 8 hours long. According to the feature description offsite meeting travel time "can extend past the start and end of the day". So the expected result is "Yes", but the actual result is "No". So this is a bug.

Test Case10 There are two offsite meetings, which are 3.5 hours and 4 hours long. According to the feature description offsite meeting travel time "can overlap for back to back off-site meetings, and can extend past the start and end of the day". So the expected result is "Yes", but the actual result is "No". So this is a bug.
 
$ ruby verify.rb

Test Case0 PASSED

Test Case1 PASSED

Test Case2 PASSED

Test Case3 PASSED

Test Case4 PASSED

Test Case5 PASSED

Test Case6 PASSED

Test Case7 Failed! Expected Result: Yes Actual: No

Test Case8 PASSED

Test Case9 PASSED

Test Case10 Failed! Expected Result: Yes Actual: No
