class RestaurantOwner
    attr_accessor :name, :age
    @@all = Array.new
    def initialize(name, age) 
        @name = name
        @age = age
        @@all << self
    end

    def restaurants
        Restaurant.all.select {|x| x.owner == self}
    end

    def menu_items
        # CARYN SAYS: same comment here about using your helper methods (ie restaurants)
        # also, if you're using << to try to make it so you don't have nested arrays, look into .flatten!
        items = Array.new
        Restaurant.all.select do |x|
            if x.owner == self
                items << x.menu_items
            end
        end
        items
    end

    def sell_restaurant(restaurant, buyer)
        # CARYN SAYS: good! but what about the parentheses! lol
        if self.restaurants.include? restaurant
            restaurant.owner = buyer
        end
    end

    def self.all
        @@all
    end

    def self.average_age
        @@all.sum {|x| x.age} / @@all.count
    end

end