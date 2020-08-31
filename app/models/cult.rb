class Cult

    attr_reader :name, :location, :founding_year, :slogan

    @@all = []

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end

    def recruit_follower(follower, date)
        BloodOath.new(self, follower, date)
    end

    def get_blood_oaths
        BloodOath.all.select { |oath| oath.cult == self }
    end

    def cult_population
        self.get_blood_oaths.length
    end

    def self.all
        @@all
    end

    def self.find_by_name(name)
        self.all.find{|cult| cult.name == name }
    end

    def self.find_by_location(location)
        self.all.find{|cult| cult.location == location }
    end

    def self.find_by_founding_year(founding_year)
        self.all.select{|cult| cult.founding_year == self}
    end

    def average_age
        self.get_blood_oaths.inject(0){|sum, elm| sum + elm.follower.age}.to_f/self.get_blood_oaths.length
    end

    def my_followers_mottos
        self.get_blood_oaths.map {|oath| oath.follower.life_motto}
    end

    def self.least_popular
        self.all.min_by{ |cult| cult.cult_population }
    end

    def self.locations
        self.all.map{ |cult| cult.location } 
    end

    def self.most_common_location
        locations = self.locations
        counts = Hash.new(0)
        locations.each { |location| counts[location] += 1 }
        common_location = counts.max_by{|k,v| v}
    end


end