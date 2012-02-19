require "find"

puts Dir.entries("documentation/class-reference").size
puts Dir.new("documentation/class-reference").entries.size
