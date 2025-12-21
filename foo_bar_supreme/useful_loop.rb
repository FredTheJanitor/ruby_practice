i = 0
loop do
  i = i + 2
  if i == 4
    next
  end
  puts i
  if i >= 10
    break
  elsif i.abs >= 100
    break
  end
end