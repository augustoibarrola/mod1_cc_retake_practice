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
        # CARYN SAYS: same comment about using your helper methods, in this case menu_items 
        MenuItem.all.select do |x|
            if x.restaurant == self
                x.recipe
            end
        end
    end

    def has_dish?(recipe)
        # CARYN SAYS: the .include? method would be helpful here! Remember that collect is like map
        # you don't need the array it creates, so it's probably not the best method to use! 
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
        # CARYN SAYS: check out the enumberable max_by for a quicker, cleaner way to do this
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