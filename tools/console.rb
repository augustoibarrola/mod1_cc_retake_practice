# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

dan = RestaurantOwner.new("Dan Richer", 37)
chloe = RestaurantOwner.new("Chloe Cheng", 32)

razza = Restaurant.new(dan, "Razza", 4)
porta = Restaurant.new(chloe, "Porta", 1)

pizza = Recipe.new("Plain Pizza", "A plain New Yorker Pizza")
icecream = Recipe.new("Ice Cream", "Some really great ice cream")

pepperonipizza = MenuItem.new(razza, pizza, 12.50)
chocolateicecream = MenuItem.new(porta, icecream, 6.99)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
