require 'pry'

class Cult
    attr_accessor :name, :location, :founding_year, :slogan, :population

    @@all = []

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @population =
        @followers = []
        @@all << self
    end

#    def name
#       @name
#    end

    def recruit_follower(new_follower)
        self.followers << new_follower
    end

    def cult_population
        self.followers.count
    end

    def self.all
        @@all
    end

    def self.find_by_name(name)
        Cult.all.select{|cult| Cult.name == self}
    end

    def self.find_by_location(location)
        Cult.all.select{|cult| Cult.location == self}
    end

    def self.find_by_founding_year(founding_year)
        Cult.all.select{|cult| Cult.founding_year == self}
    end
    
end