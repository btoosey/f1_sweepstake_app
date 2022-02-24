puts "Generating seeds..."

puts "Generating Circuits..."
Circuit.destroy_all
require_relative "seeds/001_circuits"
puts "Circuits generated"

puts "Generating Constructors..."
Constructor.destroy_all
require_relative "seeds/002_constructors"
puts "Constructors generated"

puts "Seeds generated!"
