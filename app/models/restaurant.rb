class Restaurant
    attr_accessor :name, :star_rating, :owner
    @@all = Array.new
    def initialize(owner, name, star_rating)
        @owner = owner
        @name = name
        @star_rating = star_rating
        @@all << self
    end

    def menu_items
        MenuItem.all.select {|x| x.restaurant == self}
    end
#COME BACK
    def recipes
        MenuItem.all.select do |x|
            if x.restaurant == self
                x.recipe
            end
        end
    end

    def has_dish?(recipe)
        self.menu_items.collect do |menuitem|
            if menuitem.recipe == recipe
               true
            else
               false
            end
        end.uniq
    end

    def self.all 
        @@all
    end

    def self.highest_rated
        highest = @@all.collect do |x|
            x.star_rating
        end.max
        @@all.select do |x|
            if x.star_rating == highest
                x
            end
        end
    end
end