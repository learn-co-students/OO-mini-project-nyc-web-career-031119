# require_all '../app'
require_relative '../config/environment.rb'




steve = User.new('steve')
bill = User.new('bill')
jeff = User.new('jeff')
elon = User.new('elon')

pizza = Recipe.new('pizza')
spaghetti = Recipe.new('spaghetti')
soup = Recipe.new('chicken noodle soup')
cake = Recipe.new('cake')
omelet = Recipe.new('omelet')
pb = Recipe.new('peanut butter')


milk = Ingredient.new('milk')
flour = Ingredient.new('flour')
sugar = Ingredient.new('sugar')
beef = Ingredient.new('beef')
fish = Ingredient.new('fish')
shellfish = Ingredient.new('shellfish')
peanut = Ingredient.new('peanut')
veg = Ingredient.new('veg')

jeff.declare_allergen(peanut)
bill.add_recipe_card(pizza,5)
bill.add_recipe_card(pizza,4)
bill.add_recipe_card(pizza,3)
bill.add_recipe_card(pizza,4)
bill.add_recipe_card(pizza,1)

# pizza.add_ingredients(['lard', 'cats', 'nuts'])
# jim.declare_allergen('nuts')
# tom.add_recipe_card(pizza, 'march 5th', '5')

binding.pry
