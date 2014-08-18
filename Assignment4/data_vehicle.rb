require 'csv'
puts "Enter the CSV file name"
file_name_csv=gets.chomp

file_name_class=file_name_csv.gsub!(/csv|\./,"")
file_name_class=file_name_class.split("_")
n1=file_name_class[0].capitalize
n2=file_name_class[1].capitalize
class_name=n1.concat(n2)
puts class_name

f = CSV.open("#{file_name_csv}.csv","r")

eval("#{class_name}=Class.new do
  f.first.each do |k|
    attr_accessor k.downcase!.to_sym
  end
  def self.create(vehicle,date,location,speed)
    n=#{class_name}.new
    n.vehicle = vehicle
    n.date = date
    n.location = location
    n.speed = speed
    n 
  end
  
end")


i = 0
f.each do |k| 
  
  #puts class_name
  instance_variable_set("@vehicle#{i}", eval("#{class_name}.create(k[0],k[1],k[2],k[3])"))
  i = i + 1
end
