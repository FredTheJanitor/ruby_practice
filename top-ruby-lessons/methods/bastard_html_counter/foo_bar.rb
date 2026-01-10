require "open-uri"
# url = "https://www.nytimes.com"
# pattern = "<img"   

# page = open(url).read
# # page = open is a monkey patch that doesnt work anymore
# 
# tags = page.scan(pattern)
# puts "The site #{url} has #{tags.length} img tags"
# 
#
# require "open-uri"

# url = "https://www.nytimes.com"
# pattern = "<img"

# page = URI.open(url).read # updated open to URI.open
# tags = page.scan(pattern)

# puts "The site #{url} has #{tags.length} img tags"

#  now we can methodize it to do any link
#  i made it so i dont have to type out the whole link, and i can just interact with cli
def count_image_tags(url = ("https://www." + gets.chomp.to_s + ".com"))
  pattern = "<img"
  page = URI.open(url).read
  tags = page.scan(pattern)
  puts "The site #{url} has #{tags.length} img tags"
end

def count_div_tags(url = ("https://www." + gets.chomp.to_s + ".com"))
  pattern = "<div"
  page = URI.open(url).read
  tags = page.scan(pattern)
  puts "The site #{url} has #{tags.length} div tags"
end

# one method to rule them all DRY
def count_any_tags(url = ("https://www." + gets.chomp.to_s + ".com"), tag = ("<" + gets.chomp.to_s))
  page = URI.open(url).read
  tags = page.scan(tag)
  puts "The site #{url} has #{tags.length} #{tag} tags"
end
def count_manual
  puts "-------------------------Manual Mode-------------------------"
  puts "Enter Website (without https://www. or the .com just the name)"
  puts "After that, enter the tag you would like to count"
  puts "(again just the tag name)" 
  count_any_tags
end
def count_multiple
  puts "-- =-------------------Multiple Mode-------------------------"
  puts "**NOTE**"
  puts "-- the current tags are fixed as a, div, and img --"
  puts "--"
  puts "Enter Website (without https://www. or the .com just the name)"
  url = ("https://www." + gets.chomp.to_s + ".com")
  tags = ["a", "div", "img"]
  tags.each do |tag|
    count_any_tags(url, tag)
  end
end
def end_sequence
  puts "------------------------------------------------------------"
  puts "Would you like to count again? (Y to restart, N to exit)"
  input = gets.chomp.to_s
  unless ((input == "Y") || (input == "N"))
    puts "Invalid Input"
    end_sequence
  end
  if input == "Y"
    count_picker
  end
end
def count_picker
  puts "-----------------Welcome to the count picker!---------------"
  puts " "
  puts "To get started, type 'man' for manual, or 'mul' for multiple"
  input = gets.chomp.to_s
  unless ((input == 'man') || (input == 'mul'))
    puts "Invalid Input, please type either man or mul"
    count_picker
  end
  if input == "man"
    count_manual
  else
    count_multiple
  end
end_sequence
end
count_picker