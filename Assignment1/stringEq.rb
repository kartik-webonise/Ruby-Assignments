class Equality					# class Equality to check for equality of strings
  def equal(first,second)			# function 'equal' will contain the logic
    if first==second || first.casecmp(second)==0		# condition to check for equality
      puts "Strings are equal"
    else puts "Strings are not equal"
    end
  end
end

print "Enter first string: "		# first string in variable 'first'
first=gets.chomp			 
print "ENter second string: "		# second string in variable 'second'
second=gets.chomp
check=Equality.new			# object check of class Equality
check.equal(first,second)
