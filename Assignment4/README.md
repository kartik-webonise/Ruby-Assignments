-The folder contains two ruby files one CSV and one html file.

-The file 'parse_html.rb' parses the file 'vehicle_reports.html' and stores all the data in the CSV file of same name (vehicle_repoprts.csv in this case) under four headers namely Vehicle, Date, Location and Speed.

-The file 'set_class.rb' takes the data from CSV file. It dynamically creates a class VehicleReports. It extracts the data from csv files and stores it in variables vehicle, date, location and speed and creates dynamic objects for each row in the csv file using method create.
Also all the dynamically created objects are stored in MongoDB databse.
