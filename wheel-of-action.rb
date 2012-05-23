todo = "./things-to-do.txt"
output = 4

if !File.exists?(todo)
  puts "Please create a file called \'#{todo}\'"
  exit
else
  print "Reading #{todo} ..."
  begin
    items = File.open(todo).readlines
  rescue
    puts " Failed: An error occured reading #{todo}!"
    exit
  end
  puts " Success!"
end

puts "There are #{items.count} items."


if items.count < output
  puts "You have requested #{output} items but you only have #{output} in #{todo}."
end

print "Generating a random list items ..."


