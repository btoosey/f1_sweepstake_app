puts "Destroying instances..."
require_relative "seeds/000_destroy_all"

puts "Generating seeds..."

puts "Generating Seasons..."
require_relative "seeds/001_seasons"
puts "Seasons generated"

puts "Generating Circuits..."
require_relative "seeds/002_circuits"
puts "Circuits generated"

puts "Generating Constructors..."
require_relative "seeds/003_constructors"
puts "Constructors generated"

puts "Generating Drivers..."
require_relative "seeds/004_drivers"
puts "Drivers generated"

puts "Generating TeamDrivers..."
require_relative "seeds/005_team_drivers"
puts "TeamDrivers generated"

puts "Generating Races..."
require_relative "seeds/006_races"
puts "Races generated"

puts "Generating RaceDrivers..."
require_relative "seeds/007_race_drivers"
puts "RaceDrivers generated"

puts "Generating Results..."
require_relative "seeds/008_results"
puts "Results generated"

puts "Seeds generated!"
