require_relative '../config/environment.rb'

user1 = User.new("John")
user2 = User.new("Yev")
user3 = User.new("George")

ingred1 = Ingredient.new("flour")
ingred2 = Ingredient.new("sugar")

rec1 = Recipe.new("pizza")
rec2 = Recipe.new("aaaaaaaa")
rec3 = Recipe.new("icecreadfsdfasdfm")
rec4 = Recipe.new("icecrea4fsdfm")
rec5 = Recipe.new("icecream21232")
rec6 = Recipe.new("icecream2")

user1.declare_allergen(ingred1)
user2.declare_allergen(ingred1)
user3.declare_allergen(ingred2)

arr = [ingred1, ingred2]

rec1.add_ingredients(arr)

rec1.ingredients

user1.add_recipe_card(2, rec1)
user1.add_recipe_card(3, rec2)
user1.add_recipe_card(4, rec3)
user1.add_recipe_card(5, rec4)
user1.add_recipe_card(7, rec6)
user1.add_recipe_card(6, rec5)
user2.add_recipe_card(6, rec3)

user1.declare_allergen(ingred1)

user1.allergens
# --- TO DO ---
# Ingredient.most_common_allergen

binding.pry
