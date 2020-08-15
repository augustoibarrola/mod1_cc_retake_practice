class MenuItem
    attr_accessor :price, :recipe
    attr_reader :restaurant
    @@all = Array.new
    def initialize(restaurant, recipe, price)
        @restaurant = restaurant
        @recipe = recipe
        @price = price
        @@all << self
    end

    def self.all
        @@all
    end
end