class Operations
  
  def nonrepeat
    arr=[1,2,2,3,3,4,5]
    puts "The array is #{arr}"
    arr1=arr.uniq
    puts "Array after removing duplicate values is #{arr1}"
  end

  def substr(string1)
    if string1["RUBY"]
      puts "----String contains'RUBY'----"
    else puts "----String does not contain 'RUBY'----"
    end
    puts
    length1=string1.scan("RUBY").length
    puts "----There are #{length1} occurences of 'RUBY'----"

    index1=string1.index("RUBY")
    puts index1
    index3=string1.rindex("RUBY")
    puts index3
  end

  def capital(string1)
    capital_string=string1.upcase
    puts "The capitalized string is :: #{capital_string}"
  end

  def combine(string1,string2)
    string3=string1+string2
    puts "The combined string is :: #{string3}"
  end

  def dateTime
    time=Time.now
    year=time.year 
    month=time.month
    day=time.day
    puts "Today's date is #{day}/#{month}/#{year}"
  end

  def split_method(string1)
    split_string=string1.split('.')
    puts "The string divided on '.' are as follows:"
    length1=split_string.length
    for i in 0...length1
      puts "#{i+1} String is :: #{split_string[i]}"
    end
  end

  def remove_html(string1) 
    new_string=string1.gsub(%r{</?[^>]+?>}, '')
    puts "String after removing HTML Tags is :: "
    puts new_string
  end

  def occurence(string1)
    occur=string1.scan("RUBY")
    puts occur
  end

  def find_length(string1,string2)
    len1=string1.length
    len2=string2.length
    puts "Length of string1 is #{len1}"
    puts "Length of string2 is #{len2}"    
  end
  
  def compare_date
    require 'date'
    puts "Date1 is : 12-04-2010"
    puts "Date2 is : 12-05-2011"
    date1= Date.parse("12-04-2010")
    date2= Date.parse("12-05-2011")
    date_diff=date2-date1
    puts "The days difference is #{date_diff}"  
  end

  def add_date
    date_new=Time.now+(1*7*24*60*60)
    year=date_new.year 
    month=date_new.month
    day=date_new.day
    dateTime
    puts "Date after 7 days is #{day}/#{month}/#{year}"
    
  end
 
end

string1="RUBY parses a file by looking for <br/> one of the special tags that tells it to start interpreting the text as RUBY code. The parser then executes all of the code it finds until it runs into a RUBY closing <br/> tag."
puts string1

string2="RUBY does not require (or support) explicit type definition in variable declaration; a variable's type is determined by the context in which the variable is used."

check=Operations.new
puts
check.nonrepeat
check.substr(string1)
check.capital(string1)
puts
check.combine(string1,string2)
puts
check.dateTime
puts
check.split_method(string1)
puts
check.remove_html(string1)
puts
check.occurence(string1)
puts
check.find_length(string1,string2)
puts
check.compare_date
puts
check.add_date
