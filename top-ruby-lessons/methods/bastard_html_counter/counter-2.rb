require "open-uri"

def fetch_page(url)
  return URI.open(url).read
end

def just_count_tags(page, tag)
  page.scan(/<#{tag}\b/).length
end

sites = [ "https://www.theodinproject.com", "https://www.Google.com", "https://www.yahoo.com"]
tags = ["div","h1","h2","h3","img","p"]

sites.each do |url|
  puts "#{url} has:"
  tags.each do |tag|
    page = fetch_page(url)
    tag_count = just_count_tags(page, tag)
    puts "\t - #{tag_count} <#{tag}> tags"
  end
end