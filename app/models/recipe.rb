require 'pry'
class Recipe
    # CARYN SAYS: quite a few comments and suggestions for how to improve the code!
    # LMK if there are questions, or when you've pushed up changes. 
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
        # CARYN SAYS: you created Recipe#menu_items to run this select for you ^^
        # so from here, use that method and then instead of MenuItem instances, collect the Restaurant instances
        # associated with each MenuItem instance
        MenuItem.all.select do |x|
            if x.recipe == self
                x.restaurant
            end
        end
    end

    def average_price
        self.menu_items.sum {|x| x.price} / self.menu_items.count
    end

    def highest_price
        # CARYN SAYS: I see how you made this work! 
        # a more efficient & straightforward approach involves the max or max_by enumerables
        # make sure you're attending to that all the method needs to return is the price integer  
        highest = self.menu_items.collect do |array|
            array.price
        end.max
        self.menu_items.select do |x|
            if x.price == highest
                x
            end
        end
    end

    def cheapest_restaurant
        # CARYN SAYS: you've got some errors here since Recipe#restaurants should be returning an array of Restaurant instances
        # and those instances do not have a price.
        # My tip for rewriting this is to find the cheapest menu_item (min_by?) and then grab its restaurant
        lowest = self.restaurtants.collect do |array|
            array.price
        end.min 
        self.restaurtants.select do |x|
            if x.price == lowest
                x
            end
        end
    end

    def self.all 
        @@all
    end

    def self.inactive
        self.all.select do |x|
            # CARYN SAYS: you can simplify this block to just x.restaurants == [] b/c that returns true or false
            # which  is what select needs! 
            if x.restaurtants == []
                x
            end
        end
    end
end