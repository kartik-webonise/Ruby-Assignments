class Calculation 			# class calculation to perform operations
  def operation(first,second,operator)  # member funtion of class that conatins logic
    if operator=="+"                   
      result=first+second               # result is stored in variable 'result'
    elsif operator=="-"
      result=first-second
    elsif operator=="*"
      result=first*second
    elsif operator=="/"
      result=first/second
    end
    puts "The result of #{first}#{operator}#{second} is #{result}"
  end
end

print "Enter first number: "
first=Integer(gets.chomp)               # first digit is put in 'first'
print "Enter second number: "		# second digit is put in 'second'
second=Integer(gets.chomp)		# operator digit is put in 'operator'
print "Enter operator(+,-,/,*): "
operator=gets.chomp

calculate=Calculation.new		# object calculate of class Calculation
calculate.operation(first,second,operator)
