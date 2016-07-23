def split_array(array, array_size)
results = []

#Almost built my very own .each_slice method.
#This exercise made me think like a programmer.
index = 0
(array.length / array_size.to_i ).times do
  results << array[index..(array_size.to_i - 1)]
  index = array_size
  array_size = array_size.to_i * 2
  end

#Alternatively you can use the .each_slice method below by uncommenting
#the one line below and commenting the code above starting with index = 0

#array.each_slice(array_size.to_i){|each_array| results << each_array}

results
end

# Driver code - don't touch anything below this line.
puts "TESTING split_array..."
puts

result = split_array([0, 1, 2, 3, 4, 5], 2)

puts "Your method returned:"
p result
puts

if result == [[0, 1], [2, 3], [4, 5]]
  puts "PASS!"
else
  puts "F"
end

result = split_array([0, 1, 2, 3, 4, 5], 3)

puts "Your method returned:"
p result
puts

if result == [[0, 1, 2], [3, 4, 5]]
  puts "PASS!"
else
  puts "F"
end
