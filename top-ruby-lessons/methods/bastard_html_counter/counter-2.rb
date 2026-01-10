require "open-uri"
# def count_any_tags(url, tag)
#   pattern = /<#{tag}\b/
#   page = URI.open(url).read
#   tags = page.scan(pattern)
#   puts "The site #{url} has #{tags.length} #{tag} tags"
# end


url = "https://www.google.com/"
tags = ["a", "div", "img"]
tags.each do |tag|
  count_any_tags(url, tag)
end

def fetch_page(url)
  return open(url.read)
end

# KISS keep it simple, stupid lol
def just_count_tags(page, tag)
  pattern = /<#{tag}\b/
  tags = page.scan(pattern)
  return tags.length
end