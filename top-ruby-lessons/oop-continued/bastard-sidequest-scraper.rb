#learned things from sidequest
# 1) require & headers:
# require "open-uri"
# require "nokogiri"
# headers = { "User-Agent" => Mozilla/5.0 (Windows NT... etc)
# }
# 
# require statements:
# open uri lets you open webpages
# nokogiri lets you work with html'
# 
# headers:
# allow a script to appear human
# 
# 2: Sitemaps
# finding a sitemap on the robots.txt page 
# and then leveraging that data to target
# the specific urls you want to look at
# 
# I needed special tools to unzip the gz file
# and then you use Regex to select the links
# 
# 3: Memory bank:
# if File.exist?(csv_filename)
#   CSV.foreach(csv_filename, headers: true) do |row|
#   scraped_urls << row["WebSite URL"]
#   end
# end
# 
# target batch = all_entries.reject { |url, _| scraped_urls.include?(url) }
# ***
# 
# The Array, The Question, and The Bouncer
# 
# The Array: 
# scraped_urls = []
# -- read the CSV and dump the URLs into a bucket
# 
# looks at existing file, if you already scraped 100 sites
# it will start when it finds a new one that isnt on the list. 
#
# The Bouncer and his question:
# target_batch = all_entries.reject { |url, _| scraped_urls.include?(url) }
# 
# the question is .include?
# if its on the list 
#  --scraped_url.include?()
# we tell the bouncer:
# 
# the bouncer is .reject
# you reject the target batch entries until you
# find one that ISNT on the list lol
# Hes saying does this list .include? this url?
# if it does he throws it out.
#
# 4: scraping:
# def scrape_business_details(html, url, headers)
# doc = Nokogiri::HTML(html)
# name = doc.at_css("h1.title")&.text$.strip || "Unknown Shop"
# 
# nokogiri: makes the html readable and a tree
# 
# at_css this code finds specific tags within html
# 
# .& format if a business doesnt have a title
# we dont want it to crash, it basically says if 
# you get nothing, just move on and defaults to ||
# option
# 
# 5) Ninja Backdoor AJAX
# certain items on a website may not load immediately
# one solution is finding where they are loaded from
# and going straight to the source.
# 
# ajax_url = "#{url}?department_id=&sort=default"
# ajax_headers = headers.merge({"X-Requested-With" => "XMLHttpRequest"})
# 
# this asks the server to skip loading the visual and just
# hand over the raw data, then you can regex it
# 
# 6) saving and sleeping
# 
# so it is important to randomize and delay requests so
# that way 1) you arent banned and 2) so it doesnt disrupt the 
# website.
# 
# CSV.open(csv_filename, "ab") do |csv|
# ...
# sleep_time = rand(3..8)
# sleep(sleep_time)
# rescue Interrupt
# exit
# 
# "ab" - append binary: this opens the CSV and drops data at
# the bottom
# 
# rescue interrupt:
# this stops ruby from freaking out when u ctrl c