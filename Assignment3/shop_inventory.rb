$LOAD_PATH << '.'

class FindRole

  def choose_role
    puts "Enter 1 for Shopkeeper"
    puts "Enter 2 for customer"
    option= Integer(gets.chomp)
    if option==1
      require "shopkeeper"
      s= Shopkeeper.new
      s.options
    elsif option==2
      require "user"
      u= Users.new
      u.options

    end
  end
end
obj=FindRole.new
obj.choose_role

