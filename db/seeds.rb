puts "Generating seeds..."

puts "Generating Seasons..."
Season.destroy_all
require_relative "seeds/001_seasons"
puts "Seasons generated"

puts "Generating Circuits..."
Circuit.destroy_all
require_relative "seeds/002_circuits"
puts "Circuits generated"

puts "Generating Constructors..."
Constructor.destroy_all
require_relative "seeds/003_constructors"
puts "Constructors generated"

puts "Seeds generated!"
