class Recipe
    attr_accessor :description
    attr_reader :name
    @@all = Array.new
    def initialize(name, description)
        @name = name
        @description = description
        @@all << self
    end


    def self.all 
        @@all
    end
end