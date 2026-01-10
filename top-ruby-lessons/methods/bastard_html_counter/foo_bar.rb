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

count_image_tags