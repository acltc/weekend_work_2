# Create a Yodel class that has two readable attributes: segment and count.
# A segment is a snippet of a yodel, for example: "Oh-di-lay-ee-ay"
# The count represents how many of the same segment occurs in a single yodel.
# Create a method called articulate which would return the complete yodel as a string.
# Thus, a if you called the articulate method on a yodel with a segment of "Oh-di-lay-ee-ay" and count of 4,
# it would return "Oh-di-lay-ee-ayOh-di-lay-ee-ayOh-di-lay-ee-ayOh-di-lay-ee-ay"
# The catch: In the driver code below, you'll note that you'll be instantiating
# instances of Yodel in a new way - see if you can figure out how to build the
# constructor accordingly.

class Yodel
attr_reader :segment, :count

  def initialize(input)
    @segment = input[:segment]
    @count = input[:count]
  end

  def articulate
    @segment * @count
  end
end




# Driver code - don't touch anything below this line.
puts "TESTING the Yodel class..."
puts

yodel = Yodel.new({segment: "Oh-di-lay-ee-ay", count: 4})

result = yodel.segment

puts "segment returned:"
puts result
puts

if result == "Oh-di-lay-ee-ay"
  puts "PASS!"
else
  puts "F"
end
puts

result = yodel.count

puts "count returned:"
puts result
puts

if result == 4
  puts "PASS!"
else
  puts "F"
end
puts

result = yodel.articulate

puts "articulate returned:"
puts result
puts

if result == 'Oh-di-lay-ee-ayOh-di-lay-ee-ayOh-di-lay-ee-ayOh-di-lay-ee-ay'
  puts "PASS!"
else
  puts "F"
end
