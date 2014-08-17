-The folder contains three ruby files and one html file.

-The file 'parse_html.rb' parses the file 'vehicle_reports.html' and stores all the data in 'data.csv' under four headers namely Vehicle, Date, Location and Speed.

-The file 'data_vehicle.rb' takes the data from data.csv file. It dynamically creates a class DataVehicle. It extracts the data from csv files and stores it in variables vehicle, date, location and speed and creates dynamic objects for each row in the csv file using method create.

-The file 'database.rb' uses Mysql databse for creating a table and stores the data in coloumns namely vehicles, dates, locations and speeds.If same vehicle name entry is encountered in table, the existing entry of the same vehicle name is updated with new corresponding values and no new entry is created. 
