class ParseHtml
  require 'csv'
  
  def parse_regex
    puts "Enter the HTML file name"
    file_name_html=gets.chomp
    file_name_csv=file_name_html.split(".")
    puts file_name_csv[0]
    f=File.open(file_name_html, "r")

    c = CSV.open("#{file_name_csv[0]}.csv","wb") do |csv|
    csv << ["Vehicle", "Date", "Location", "Speed"]
    for line in f
      n = line.scan(/<th>.*?<\/th>/)
	    m = line.scan(/<td>.*?<\/td>/)
	    n.each{|k| k.gsub!(/<th>|<\/th>|\\|\"/,"")} if n != nil
	    m.each{|k| k.gsub!(/<td>|<\/td>|\\|\"|'/,"")} if m != nil
      if m[0] != nil
        car = m[0].split(/,/)
        csv << [car[0],car[1]+car[2],m[1],m[2]] 
      end
    end
    end
  f.close
  end
end

obj=ParseHtml.new
obj.parse_regex