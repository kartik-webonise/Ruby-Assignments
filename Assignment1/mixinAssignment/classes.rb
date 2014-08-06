$LOAD_PATH<<'.'
require "mixin"

class Score					# class Score to calcluate percentage
  include Calculate				# module Calculate is included 
  def percent					# function def contains logic
    print "Enter marks for subject1: "
    mark1=Float(gets.chomp)
    print "Enter marks for subject2: "		# mark1,mark2,mark3,mark4 variables to store marks
    mark2=Float(gets.chomp)
    print "Enter marks for subject3: "
    mark3=Float(gets.chomp)
    print "Enter marks for subject4: "
    mark4=Float(gets.chomp)
    Calculate.calc_percent(mark1,mark2,mark3,mark4)		# method id called from module
  end
end

class Interest					# class Interest to calcluate interest
  include Calculate				# module Calculate is included 
  def amount
    print "Enter Principle amount: "
    principle=Float(gets.chomp)			# variables to store principle,duration and rate
    print "Enter the duration in years: "
    year=Float(gets.chomp)
    print "Enter the Rate of Interest: "
    rate=Float(gets.chomp)
    Calculate.calc_interest(principle,year,rate)	# method id called from module
  end
end 

puts "----Calculate your Percentage of marks----"
s=Score.new						# object s of class Score is created 
s.percent

puts "----Calculate your interset----"
i=Interest.new						# object i of class Interest is created 
i.amount

