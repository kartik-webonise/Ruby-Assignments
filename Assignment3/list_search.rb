module ListSearch
  def ListSearch.list_product
    count =0
    file_name="Inventory.txt"
    file1=File.open(file_name,"r")
    file1.each_line do |line|
      count=count+1
      split_line=line.split(/\W/)
      puts "Details of Product #{count} are :: "
      puts "Product ID is #{split_line[0]}"
      puts "Product Name is #{split_line[1]}"
      puts "Product Price is #{split_line[2]}"
      puts "Product Stock Item is #{split_line[3]}"
      puts "Product Company Name is #{split_line[4]}"
      puts
    end
    file1.close
  end

  def ListSearch.search_product
    file_name="Inventory.txt"
    file1=File.open(file_name,"r")
    puts "Enter the Product Name"
    p_name=gets.chomp
    file1.each_line do |line|
       split_line=line.split(/\W/)
      if split_line[1]== p_name
        puts "Product ID is #{split_line[0]}"
        puts "Product Name is #{split_line[1]}"
        puts "Product Price is #{split_line[2]}"
        puts "Product Stock Item is #{split_line[3]}"
        puts "Product Company Name is #{split_line[4]}"
        puts
      end
    end
  file1.close
  end

end
