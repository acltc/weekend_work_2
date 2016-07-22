def reverse_a_string(string)
reversed_string = ""
string.each_char{|letter| reversed_string = letter + reversed_string}
reversed_string
    #or using a while loop, uncomment below and comment above to see it work
    #reversed_string = ""
    #i = 0
    #while i < string.length
    #letter = string[i]
    #reversed_string = letter + reversed_string
    #i += 1
    #end
    #reversed_string
end
def palindrome?(string)
   string == string.reverse
   #alternatively I can compare with my own method from last week.
   #uncomment below, and comment above, to see it work.
   #string == reverse_a_string(string)
end

# Driver code - don't touch anything below this line.
puts "TESTING palindrome?"
puts

result = palindrome?("racecar")

puts "Your method returned:"
p result
puts

if result == true
  puts "PASS!"
else
  puts "F"
end

result = palindrome?("wazzzzup")

puts "Your method returned:"
p result
puts

if result == false
  puts "PASS!"
else
  puts "F"
end
