require 'csv'
$resultCount = 0
system('ruby test2_new.rb')

def verify_result(testcase, actualResult)
     # puts "Verify...... " 
     table2 = CSV.parse(File.read("calendar_expected.csv"), headers: true)
     expectedResult = table2[$resultCount]["expected"]
     if actualResult.eql?expectedResult
        puts "Test Case" + $resultCount.to_s + " PASSED"
     else
        puts "Test Case" + $resultCount.to_s + " Failed! Expected Result: "+expectedResult+" Actual: "+actualResult
     end
     $resultCount = $resultCount+1
end

File.foreach("console.out") do |line| 
# |line| puts line,$.

     if line.include? "No"
        verify_result($resultCount.to_s, "No")
     end
       
     if line.include? "Yes" 
        verify_result($resultCount.to_s, "Yes")
     end
         
end



