require 'nokogiri'
require 'open-uri'
 
doc = Nokogiri::HTML(open("https://flatironschool.com/"))
doc.css(".headline-26OIBN").text

courses = doc.css(".title-oE5vT4")

puts doc.css(".headline-26OIBN")

courses.each do |course|
  puts course.text.strip
end

p doc.css(".title-oE5vT4")[0].name

p doc.css(".title-oE5vT4")[0].attributes