class Follower

    attr_reader :name, :age
    attr_accessor :life_motto

    @@all = []

    def initialize(name, age, motto)
        @name = name
        @age = age
        @life_motto = motto
        @@all << self
    end

    def self.all
        @@all
    end

    def cults(name)
        BloodOath.all.select { |oath| oath.follower == self }
    end

    def join_cult(cult, date)
        BloodOath.new(cult, self, date)
    end

    def self.of_a_certain_age(age)
        self.all.map{|follower| follower.age >= age}
    end

end