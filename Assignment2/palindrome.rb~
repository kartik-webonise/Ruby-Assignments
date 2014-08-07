class Check
def palindrome(string)
  string_del=string.delete(' ')
  string_rev=string_del.reverse
  if string==string_rev || string.casecmp(string_rev)==0
    puts "It is a palindrome"
  else puts "Not a palindrome"
  end
end
end
print "Enter a string: "
string=gets.chomp
string=string.delete(' ')
checkObj=Check.new
checkObj.palindrome(string)
