puts ("===========================")
# Array
v = [1, 2, 3]

v.each do |item|
    puts item
end

puts ("===========================")
# Add item
v.push(5)

v.each do |item|
    puts item
end

puts ("===========================")
# Element by index
puts v[1]
