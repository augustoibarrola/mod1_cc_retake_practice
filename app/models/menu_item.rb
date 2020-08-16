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

    def owner 
        self.restaurant.owner
    end

    def self.all
        @@all
    end

    def self.most_expensive_item
        highest = @@all.collect {|x| x.price}.max
        @@all.select do |x|
            if x.price == highest
                x
            end
        end
    end
end
