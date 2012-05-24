todo = "./things-to-do.txt"
output = 4

if !File.exists?(todo)
  puts "Please create a file called \'#{todo}\'"
  exit
else
#  print "Reading #{todo} ..."
  begin
    items = File.open(todo).readlines
  rescue
    puts " Failed: An error occured reading #{todo}!"
    exit
  end
#  puts " Success!"
end

puts "There are #{items.count} items."


if items.count < output
  puts "You have requested #{output} items but you only have #{output} in #{todo}."
end

#puts "Generating a random list of items ..."

counter = 0
itemlist = []
while(counter < output)
  random = rand(1..items.count)
#  puts "Random number: #{random}"
  if itemlist.include?(random)
#    puts "Duplicate detected, break."
  else
    itemlist.push(random)
    counter=counter + 1
  end
end

#puts "Using these numbers: #{itemlist}"

puts "Here is your list of things to do!"
puts ""
itemlist.each { |i| puts "* #{items[i-1].strip} *" }
puts ""
