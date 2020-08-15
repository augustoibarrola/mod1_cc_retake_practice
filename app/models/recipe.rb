class Recipe
    attr_accessor :description
    attr_reader :name
    @@all = Array.new
    def initialize(name, description)
        @name = name
        @description = description
        @@all << self
    end

    def menu_items
        MenuItem.all.select {|x| x.recipe == self}
    end

    def restaurtants
        MenuItem.all.select do |x|
            if x.recipe == self
                x.restaurant
            end
        end
    end

    def self.all 
        @@all
    end
end