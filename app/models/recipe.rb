require 'pry'
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

    def average_price
        self.menu_items.sum {|x| x.price} / self.menu_items.count
    end

    def highest_price
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
            if x.restaurtants == []
                x
            end
        end
    end
end