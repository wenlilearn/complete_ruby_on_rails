# Array
arr = [1, 2, 3, 4, 5]
puts(arr)
# Shuffle array(modify self)
arr.shuffle!
p arr
# shift as stack, leftmost
p [2,3].shift()
# unshift as stack
p [2,3].unshift(1)
# append/<< as queue
p [1,2] << 3
p [1,2].append(3)
# unique
p [1,1,1].uniq!
# Empty
p [].empty?
# membership
p [1,2,3].include?(1)
# push/pop at the end. As stack. rightmost
p [1,2].push(3)
p [1,2,3].pop()
# join, join and turn into a string
p [1,2,3].join(",")
# split
p "1,2,3".split(",")
# sigils by space
p %w(a b c)

# Range
range = 1..100
puts(range.class)
# Convert range to array
p range.to_a
# Can't run length on range!
# range.length # => throws error!
range_arr = range.to_a

# Iterators
# Iterate through array
p "print array"
[1, 2, 3].each do |i|
  puts i
end
p "end"

# Hash
puts({"key" => "value"})
# symbol 
puts({symbol_key: :value})
hash = {}
hash[:a] = 1
puts hash
puts hash[:a]
puts hash[:b].class
# Iterator through hash
{a: 1, b: 2}.each do |k, v|
  puts "#{k}: #{v}"
end