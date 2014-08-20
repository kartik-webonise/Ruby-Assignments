
require 'mysql'
require_relative 'data_vehicle'
con=Mysql.new 'localhost', 'user12', '34klq*', 'vehicledb'

con.query("create table IF NOT EXISTS VehicleInfo (vehicles varchar(50),dates varchar(50), locations varchar(255), speeds varchar(10))")

for j in 0...7
  vehicle=eval("@vehicle#{j}.vehicle")
  dates=eval("@vehicle#{j}.date")
  locations=eval("@vehicle#{j}.location")
  speeds=eval("@vehicle#{j}.speed")
  
  rs=con.query("select * from VehicleInfo where vehicles='#{vehicle}'")
  if rs.num_rows==0
    con.query("insert into VehicleInfo values('#{vehicle}','#{dates}','#{locations}','#{speeds}')")
  else
    con.query("update VehicleInfo set dates='#{dates}', locations='#{locations}', speeds='#{speeds}' where vehicles='#{vehicle}'")
  
  end
end


#obj=Database.new
#obj.connect




