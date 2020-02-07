# puts returns nil
puts "Hello World"
# p will not print nil
p "Hello World"
# print will not print a new line
print "Hello World"
print "New line here! \n" 

# variable
g = "Hello"
puts g

# method
def say_hello(thing)
  puts "Hello #{thing}"
end
say_hello("World!")