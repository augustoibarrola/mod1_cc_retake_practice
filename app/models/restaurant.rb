class Restaurant
    attr_accessor :name, :star_rating
    attr_reader :owner
    @@all = Array.new
    def initialize(owner, name, star_rating)
        @owner = owner
        @name = name
        @star_rating = star_rating
        @@all << self
    end

    def self.all 
        @@all
    end
end