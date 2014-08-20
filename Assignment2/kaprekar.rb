class Kaprekar

  def check_kaprekar(k)
    square = k**2
    length_full = (square.to_s.length)-1
    length_half = (square.to_s.length / 2) - 1
    a = square.to_s[0..length_half].to_i
    b = square.to_s[length_half+1..length_full].to_i
    k == (a+b)
  end

def  simple_test(i)
  if check_kaprekar(i) == true then
      p "#{i} is Kaprekar Number"
  elsif check_kaprekar(i) == false then
    "#{i} is not a Kaprekar Number"
  end
end

end

obj=Kaprekar.new
puts "Enter the number to check"
number=Integer(gets.chomp)
obj.simple_test(number)