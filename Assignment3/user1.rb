$LOAD_PATH<<'.'
require "mixin1"
class Users
    include FIND
  def order
     file_name="Orders.txt"
     file1=File.open(file_name,"a")
     
     puts "Enter Product ID"
     pid=gets.chomp
     file1.print pid
     file1.print "\t"

     puts "Enter Your NAME"
     name=gets.chomp
     file1.print name
     file1.print "\t"

     puts "Enter Credit Card No."
     cno=gets.chomp
     file1.print cno
     file1.print "\t"
  
     puts "Enter CVV No."
     cvv=gets.chomp
     file1.print cvv
     file1.print "\n"
     
     file_name1="Inventory.txt"
     file2=File.open(file_name1,"r")
     file3=File.open("temp_file.txt","w")
     file2.each_line do |line|
       split_line=line.split(/\W/)
       if split_line[0]==pid
         puts "Product is present"
       end
       unless split_line[0]== pid
         file3.write(line)
       end
     end
     File.rename("temp_file.txt",file_name1)
     file1.close
     file2.close
     file3.close
 
  end

  def options
    u=Users.new
    puts "Enter 1 to List Products"
    puts "Enter 2 to Search Products"
    puts "Enter 3 to Buy Products"
    option=Integer(gets.chomp)

   case option
     when 3 then u.order
     when 1 then FIND.list_product
     when 2 then FIND.search_product
   end
  end
end


