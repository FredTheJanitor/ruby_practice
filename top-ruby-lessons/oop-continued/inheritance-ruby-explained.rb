def launch_longships(longships)
  # we can only use longships since that was whats passed
  launched_ships = 0
  # now we can use launched ships: in scope
  longships.each do |longship|
    # now longship is in scope
    longship_name = "#{longship.owner.name}'s Reaver"
    # now longship_name is in scope
    longship.launch
    launched_ships += 1
    puts "#{longship_name} successfully launched"
  end
  # now we dont have access to longship or longship_name
  puts "nice, launched #{launched_ships} ships!"
end