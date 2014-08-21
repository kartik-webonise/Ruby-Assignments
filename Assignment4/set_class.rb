require 'csv'
require 'mongo'
class SetClass

  def self.find_class_and_read_CSV

    puts "Enter the CSV file name"
    # file_name_csv is the input csv file
    file_name_csv=gets.chomp
    # seperate the file name from '.'
    temp=file_name_csv.split('.')
    class_name=temp[0]
    # remove all the '_' from class name
    class_name=class_name.gsub(/_/,"")
    #capitalize letter in class name
    class_name=class_name.capitalize
    p class_name
    # @content contains all the data in the csv file
    @content=CSV.read(file_name_csv,"r")
    p @content
    # fill_object method is called
    # fill_object prepares an object for each row entry in the csv file
    SetClass.fill_object class_name
    # database_insert method is called
    # database_insert methods adds all the entries from csv to MondoDB database
    SetClass.database_insert class_name

  end

  def self.fill_object(class_name)

    obj_count = 0
    # @conten0[0] is the first row is csv which contains headers
    # all headers are made symbols
    @content[0].each  do |lower|
      lower.downcase.to_sym
    end

    # named constant Class.new is set to Object created out of class name
    klass = Object.const_set "#{class_name}",Class.new

    puts "#{class_name}"
    header_name=@content[0]
    p @content[0]
    # @attributes contains all the headers
    @attributes=header_name

    klass.class_eval do
      attr_accessor *header_name
    end

    total_entries=@content.size
    puts "----There are  total #{total_entries} entries in the CSV file----"
    @content.each do |entry|
      unless obj_count <=1
        # An object with the class name created and constant Classname.new is set to it
        Object.const_set "#{class_name}#{obj_count}", eval("#{class_name}.new")
        # zip method is used to combine to arrays
        header_name.zip(entry).each do |attr,data|
          # headers are stored as attributes in attr
          # content is stored as data
          # object is create as classname(count).attribute which will give the data
          eval("#{class_name}#{obj_count}.#{attr}=data")
          puts "#{class_name}#{obj_count}.#{attr}=#{data}"

        end
      end
      obj_count=obj_count+1
    end
  end

  def self.database_insert(class_name)
    # new handle for user is created as mongo_client
    mongo_client = Mongo::MongoClient.new("localhost", 27017)
    # originality of database is checked
    # if same exists already, new is created
    if mongo_client.database_names.include? "mydb"
      mongo_client.drop_database "mydb"
    end
    # new handle for database is created as db
    db = mongo_client.db("mydb")
    # collection is created with same name as class name
    coll = db[class_name]
    counter=0
    @content.each do |entry|
      if counter>=1
        # zip is used to combine the two arrays
        # doc is array of sub-arrays
        doc=@attributes.zip(entry)
        # a new hash called db_hash is created which stores the entriews in key=>value format
        db_entry=Hash[*doc.flatten]
        # hash is inserted into database
        coll.insert(db_entry)
        p db_entry

      end
      counter=counter+1
    end
    end


end

SetClass.find_class_and_read_CSV
