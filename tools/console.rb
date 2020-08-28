require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

scientology = Cult.new("Scientology", "Los Angeles", 1969, "We are sheeple.")
manson = Cult.new("Manson Family", "San Francisco", 1974, "We are on Acid.")

tificy = BloodOath.new(1969)
murder = BloodOath.new(1969)

tom = Follower.new("Tom Cruise", 55, "Big teeth do best.")
mary = Follower.new("Mary Do-Killer", 16, "The buegiouse must be destroyed.")

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits