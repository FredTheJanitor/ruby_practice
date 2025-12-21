x = 0

while x <= 10
  if x == 5
    puts "HEY BITCH IM 5 like WHADDAP"
    x += 1
    next
  end
  if x == 7
    puts "im here to say 9 a lil bitch... sincerely,"
  end
  if x.odd?
    puts x
  end
  if x == 8
    puts "hey man its me 10, im scared of 7, do you know why?"
      answer = gets.chomp
      if answer == "yea"
        puts "FUCK YOU"
        break
      else
        puts "bEcAuSe sEvEn eIgHt nInE"
        x += 1
        next
      end
  end
  x += 1
end