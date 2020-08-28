require 'pry'

class Follower

    attr_reader :name, :age
    attr_accessor :life_motto

    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    def cults(name)
        Cult.find_by_name(name) == self
    end

    def join_cult(cult)
        Cult.new_follower(cult)
    end

    def self.all
        @@all
    end

    def self.of_a_certain_age(age)
        Cult.all.map{|follower| follower.age >= age}
    end

end