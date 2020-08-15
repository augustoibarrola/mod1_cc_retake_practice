class Restaurant
    attr_accessor :name, :star_rating
    attr_reader :owner
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


    def self.all 
        @@all
    end
end