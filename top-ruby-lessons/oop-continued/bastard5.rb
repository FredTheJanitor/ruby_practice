require "open-uri"
remote_base_url = "https://en.wikipedia.org/wiki"

#the mask
headers = { "User-Agent" => "Mozilla/5.0 (Windows NT 10.0; Win64; x64)"}

[1900, 1910, "xj3490", 2000].each do |yr|
  
  retries = 3

  begin
    url = "#{remote_base_url}/#{yr}"
    puts "Getting page #{url}"
    rpage = URI.open(url, headers)
  rescue StandardError => e
    puts "\tError: #{e}"
    if retries > 0
      puts "\tTrying #{retries} more times"
      retries -= 1
      sleep 1
      retry
    else
      puts "\t\tCan't get #{yr}, so moving on"
    end
  else
    puts "\tGot page for #{yr}"
  ensure
    puts "ensure branch; sleeping"
    sleep 1
  end

end