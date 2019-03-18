require_relative '../config/environment.rb'

def reload
	load './config/enviornment.rb'
end


#RECIPES
lasagna = Recipe.new("lasagna")
pizza = Recipe.new("pizza")
chef_salad = Recipe.new("chef salad")
ramen = Recipe.new("ramen")
sushi = Recipe.new("sushi")

#create users
theo = User.new("Theo")
alejandro = User.new("Alejandro")
jershumpus = User.new("jershumpus")
pebblerot = User.new("pebblerot")

#adding recipes to users
theo.add_recipe_card(lasagna, 5)
theo.add_recipe_card(pizza, 1)
theo.add_recipe_card(ramen, 5)
alejandro.add_recipe_card(pizza, 1)
theo.add_recipe_card(chef_salad, 4)
alejandro.add_recipe_card(ramen, 5)
pebblerot.add_recipe_card(ramen, 5)
pebblerot.add_recipe_card(ramen, 5)

#create ingredients
pasta = Ingredient.new("pasta")
cheese = Ingredient.new("cheese")
pizza_dough = Ingredient.new("pizza dough")
tomato_sauce = Ingredient.new("tomato sauce")
lettuce = Ingredient.new("lettuce")
rice = Ingredient.new("rice")
salmon = Ingredient.new("salmon")
nori = Ingredient.new("nori")
avocado = Ingredient.new("avocado")
wasabi = Ingredient.new("wasabi")

broth = Ingredient.new("broth")
noodles = Ingredient.new("noodles")
scallions = Ingredient.new("scallions")
sprouts = Ingredient.new("sprouts")
egg = Ingredient.new("egg")
lotus_root = Ingredient.new("lotus_root")

#make recipeingredents
pizza.add_ingredients([pizza_dough, cheese, tomato_sauce])
ramen.add_ingredients([broth, noodles, scallions, sprouts, egg, lotus_root, cheese])
lasagna.add_ingredients([cheese, tomato_sauce])
sushi.add_ingredients([rice, salmon, nori, avocado, wasabi])

#Alergen declarations
theo.declare_allergen(cheese)
theo.declare_allergen(pizza_dough)
alejandro.declare_allergen(pizza_dough)



binding.pry
