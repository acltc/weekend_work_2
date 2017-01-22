# In honor of the new movie Batman vs. Superman
# Create a Superhero class
# Superheros have attributes 
    # name (string, readable), 
    # hitpoints (integer, writable), 
    # attack (integer), 
    # alive (boolean, set automatically as true, writable), 
    # and has_special_tool (boolean, we want to describe if they have a special_tool start automatically to false, readable)
    # -- you decide if they have to be readable/writable attributes
# Notice attributes are set as a single hash
# For this class Superheros objects will interact with other Superhero objects by passing them into the method arguments. (check Driver code)
# Superheros can hit, so they need a hit method that takes away hit points from another Superhero object, by the number of attack they have. (again check the driver code)
# if a Superhero has a special_tool their attack is tripled
# if a Superhero is attacked and their hitpoints are less than 1, they are no longer alive
# Superhero needs a grab_tool method, that sets the has_special_tool attribute to true.


# Driver code - don't touch anything below this line.
puts "TESTING the Superhero class..."
puts

superman = Superhero.new({name: "Superman", hitpoints: 45, attack: 3})
batman = Superhero.new({name: "Batman", hitpoints: 30, attack: 3})

puts "Testing Stats..."
puts

if superman.name == "Superman"
  puts "PASS!"
else
  puts "F"
end

if superman.hitpoints == 45
  puts "PASS!"
else
  puts "F"
end

if superman.alive == true
  puts "PASS!"
else
  puts "F"
end

if batman.name == "Batman"
  puts "PASS!"
else
  puts "F"
end

if batman.hitpoints == 30
  puts "PASS!"
else
  puts "F"
end

if batman.alive == true
  puts "PASS!"
else
  puts "F"
end
puts

puts "Stats..."
puts

puts "• #{superman.name} has #{superman.hitpoints} hitpoints"
puts "• #{batman.name} has #{batman.hitpoints} hitpoints"
puts 

puts "Superman hits Batman"
puts "Testing..."

superman.hit(batman)
puts "Batman's hitpoints are #{batman.hitpoints}"


if batman.hitpoints == 27
  puts "PASS!"
else
  puts "F"
end
puts


puts "Batman hits Superman"
puts "Testing..."

batman.hit(superman)
puts "Superman's hitpoints are #{superman.hitpoints}"


if superman.hitpoints == 42
  puts "PASS!"
else
  puts "F"
end
puts

puts "Checking Stats..."
puts
puts "• #{superman.name} has #{superman.hitpoints} hitpoints"
puts "• #{batman.name} has #{batman.hitpoints} hitpoints"
puts 


puts "Batman picks up Kryptonite (tool)"
puts "Testing..."

batman.grab_tool

if batman.has_special_tool == true
  puts "PASS!"
else
  puts "F"
end
puts


5.times do 
  puts "Batman hits Superman"
  batman.hit(superman)
  puts superman.hitpoints
end

puts "Testing..."
if superman.alive == false
  puts "PASS!"
else
  puts "F"
end
puts


puts "Checking Stats..."
puts
if superman.alive
  puts "• #{superman.name} has #{superman.hitpoints} hitpoints"
else
  puts "• Superman is dead."
end
puts "• #{batman.name} has #{batman.hitpoints} hitpoints"
puts 
