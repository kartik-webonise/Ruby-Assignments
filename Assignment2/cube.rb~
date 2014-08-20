class Cube
  def calculate(initial,final)
    result=(initial..final).inject(0) {|x,y| x+(y*y*y)}
    puts result
  end
end

print "Enter initial value in range: "
initial=Integer(gets.chomp)
print "Enter final value in range: "
final=Integer(gets.chomp)

obj=Cube.new
obj.calculate(initial,final)
