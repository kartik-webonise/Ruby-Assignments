require 'csv'

f = CSV.open("data.csv","r")

DataVehicle = Class.new do
  f.first.each do |k|
    attr_accessor k.downcase!.to_sym
  end
  def self.create(vehicle,date,location,speed)
    n = DataVehicle.new
    n.vehicle = vehicle
    n.date = date
    n.location = location
    n.speed = speed
    n 
  end
end

i = 0
f.each do |k| 
  instance_variable_set("@vehicle#{i}", DataVehicle.create(k[0],k[1],k[2],k[3]))
  i = i + 1
end
