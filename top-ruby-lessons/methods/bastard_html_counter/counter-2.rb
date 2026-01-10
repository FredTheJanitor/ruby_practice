require "open-uri"

def fetch_page(url)
  return open(url.read)
end

def just_count_tags(page, tag)
  pattern = /<#{tag}\b/
  tags = page.scan(pattern)
  return tags.length
end