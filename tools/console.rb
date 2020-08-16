# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

dan = RestaurantOwner.new("Dan Richer", 37)
dan_the_elder = RestaurantOwner.new("Dan The Elder", 105)
chloe = RestaurantOwner.new("Chloe Cheng", 32)
zach = RestaurantOwner.new("Zach", 44)
keisha = RestaurantOwner.new("Keisha", 34)

razza = Restaurant.new(dan, "Razza", 4)
arturos = Restaurant.new(dan, "Razza", 3)
porta = Restaurant.new(chloe, "Porta", 1)
ogden = Restaurant.new(zach, "Ogden", 3)
babybrasa = Restaurant.new(keisha, "Baby Brasa", 4)

pizza = Recipe.new("Plain Pizza", "A plain New Yorker Pizza")
icecream = Recipe.new("Ice Cream", "Some really great ice cream")
chicken = Recipe.new("Spanish Chicken", "Great Baby Brasa Chicken")
beef = Recipe.new("Korean Beef", "Bolgogi and spicy beef")
slime = Recipe.new("Green Slime", "Strange slime that oozes out of the walls")

pepperonipizza = MenuItem.new(razza, pizza, 12.50)
nutellaipizza = MenuItem.new(razza, pizza, 15.50)
chocolateicecream = MenuItem.new(porta, icecream, 6.99)
spanishchicken = MenuItem.new(babybrasa, chicken, 23.45)
bolgogi = MenuItem.new(ogden, beef, 17.50)
currychicken = MenuItem.new(babybrasa, chicken, 14.50)
icecreammadness = MenuItem.new(arturos, icecream, 23.00)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
