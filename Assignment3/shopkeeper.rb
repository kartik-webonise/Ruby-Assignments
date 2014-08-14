require "list_search"

class Shopkeeper

  include ListSearch
  def add_product
    file_name="Inventory.txt"
    file1=File.open(file_name,"a")

    puts "Enter the product id"
    pid=(gets.chomp)
    file1.print pid
    file1.print "\t"

    puts "Enter the name"
    pname=gets.chomp
    file1.print pname
    file1.print "\t"

    puts "Enter price"
    price=(gets.chomp)
    file1.print price
    file1.print "\t"

    puts "Enter Stock item"
    stock=Integer(gets.chomp)
    file1.print stock
    file1.print "\t"

    puts "Enter company name"
    cname=gets.chomp
    file1.print cname
    file1.print "\n"
    file1.close


  end

  def remove_product
    file_name="Inventory.txt"
    file1=File.open(file_name,"r")
    file2=File.open("temp_file.txt","w")
    puts "Enter the Product Id"
    p_id=gets.chomp
    file1.each_line do |line|
       split_line=line.split(/\W/)
      unless split_line[0]== p_id
        file2.write(line)
      end
    end
  File.rename("temp_file.txt",file_name)
  file1.close
  end

  def modify_product
  file_name="Inventory.txt"
    file1=File.open(file_name,"r")
    file2=File.open("temp_file.txt","w")
    puts "Enter the Product Id"
    p_id=gets.chomp
    file1.each_line do |line|
       split_line=line.split(/\W/)
      unless split_line[0]== p_id
        file2.write(line)
      end
    end
  File.rename("temp_file.txt",file_name)
  file1.close
  file2.close
  modify1
  end

  def modify1
    file_name="Inventory.txt"
    file1=File.open(file_name,"a")
    puts "Enter the NEW product id"
    pid=gets.chomp
    file1.print pid
    file1.print "\t"


    puts "Enter the NEW Product name"
    pname=gets.chomp
    file1.print pname
    file1.print "\t"

    puts "Enter NEW price"
    price=gets.chomp
    file1.print price
    file1.print "\t"

    puts "Enter NEW Stock item"
    stock=gets.chomp
    file1.print stock
    file1.print "\t"

    puts "Enter NEW company name"
    cname=gets.chomp
    file1.print cname
    file1.print "\n"
    file1.close
  end



def options
s= Shopkeeper.new
    puts "Enter 1 to ADD product"
    puts "Enter 2 to REMOVE product"
    puts "Enter 3 to LIST products"
    puts "Enter 4 to SEARCH a product"
    puts "Enter 5 to MODIFY a product"
    puts "Enter 6 to EXIT"

   choice=Integer(gets.chomp)
    case choice
      when 1 then s.add_product
      when 4 then ListSearch.search_product
      when 3 then ListSearch.list_product
      when 5 then s.modify_product
      when 2 then s.remove_product
      when 6 then abort("--You Have Exited--")
    end
  end

end

















