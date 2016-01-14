# Create a Tangerine class with a readable age attribute.
# It should also have a rotten? method which should return true if the age is greater than 5, false otherwise.
# The class should also have an increase_age method that increases the age attribute by 1.



# Driver code - don't touch anything below this line.
puts "TESTING the Tangerine class..."
puts

tangerine = Tangerine.new

result = tangerine.age

puts "age returned:"
puts result
puts

if result == 0
  puts "PASS!"
else
  puts "F"
end
puts

result = tangerine.rotten?

puts "rotten? at age 0 returned:"
puts result
puts

if result == false
  puts "PASS!"
else
  puts "F"
end
puts

6.times do
  tangerine.increase_age
end

result = tangerine.rotten?

puts "rotten? at age 6 returned:"
puts result
puts

if result == true
  puts "PASS!"
else
  puts "F"
end
