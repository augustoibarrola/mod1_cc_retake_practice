class MenuItem
    attr_accessor :price, :recipe
    attr_reader :restaurant
    # CARYN SAYS: i like that you distinguished the attr's! 
    @@all = Array.new
    def initialize(restaurant, recipe, price)
        @restaurant = restaurant
        @recipe = recipe
        @price = price
        @@all << self
    end

    def owner 
        # CARYN SAYS: good! 
        self.restaurant.owner
    end

    def self.all
        @@all
    end

    def self.most_expensive_item
        # CARYN SAYS: check out the max_by enumerable for a cleaner, more concise way to do this
        highest = @@all.collect {|x| x.price}.max
        @@all.select do |x|
            if x.price == highest
                x
            end
        end
    end
end
