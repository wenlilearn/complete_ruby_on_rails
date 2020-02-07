# String concatenation
prefix = "My name is"
suffix = "Mashrur"
puts prefix + " " + suffix

# String interpolation
puts "#{prefix} #{suffix}"

# methods
puts prefix.class # => String
 
# find all methods
p prefix.methods

# Single quotes escape special characters but not single quote
p 'this is a #{test}' # => "this is a \#{test}"

# get input from user
first_name = gets.chomp
puts "first name is: #{first_name}"