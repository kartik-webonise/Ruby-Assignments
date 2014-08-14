$LOAD_PATH << '.'

class Main1
  
  def choose
    puts "Enter 1 for Shopkeeper"
    puts "Enter 2 for customer"
    option= Integer(gets.chomp)
    if option==1
      require "shopkeeper"
      s= Shopkeeper.new
      s.options
    elsif option==2
      require "user1"
      u= Users.new
      u.options
      
    end
  end
end
obj=Main1.new
obj.choose

