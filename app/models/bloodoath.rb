class BloodOath

    attr_reader :follower, :cult, :initiation_date

    @@all = []

    def initialize(cult, follower, initiation_date)
        @initiation_date = "#{Time.now.year}-#{Time.now.month}-#{Time.now.day}"
        @follower = follower
        @cult = cult
        @@all << self
    end

    def self.all
        @@all
    end
end