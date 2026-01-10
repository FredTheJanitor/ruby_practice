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
puts "Enter Website (without https://www. or the .com just the name)"
puts "After that, enter the tag you would like to count (again just the tag name)"
count_any_tags