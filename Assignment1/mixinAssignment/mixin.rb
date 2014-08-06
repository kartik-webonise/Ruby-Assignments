module Calculate				# module is created
  def Calculate.calc_percent(mark1,mark2,mark3,mark4)		# method calc_percent to calculate percentage 
    sum=((mark1+mark1+mark3+mark4)/400)
    percent=sum*100
    puts "The percentage is #{percent}"
  end
  
  def Calculate.calc_interest(principle,year,rate)		# method calc_interest to calculate interest
    interest=(principle*year*rate)/100			
    puts "The interest is #{interest}"
  end
end
