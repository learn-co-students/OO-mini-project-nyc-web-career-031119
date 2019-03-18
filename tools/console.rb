require_relative '../config/environment.rb'


#recipe instances
pasta = Recipe.new("pasta")
cereal = Recipe.new("cereal")
subway = Recipe.new("subway")
goldfish = Recipe.new("goldfish")


#user instances
josh = User.new("Josh")
liz = User.new("Liz")
jim = User.new("Jim")

#ingredient instances
milk = Ingredient.new("milk")
noodle = Ingredient.new("noodle")
sauce = Ingredient.new("sauce")

#allergen instances
dairy = Allergen.new(josh, milk)
gluten = Allergen.new(liz, noodle)

#recipe card instances
josh_pasta = RecipeCard.new(josh, pasta,  5)
josh_cereal = RecipeCard.new(josh, cereal, 9)
josh_gold = RecipeCard.new(josh, goldfish, 3)
josh_sub = RecipeCard.new(josh, subway, 2)
liz_pasta = RecipeCard.new(liz, pasta, 7)
jim_cereal = RecipeCard.new(jim, cereal, 8)
jim_pasta = RecipeCard.new(jim, pasta, 9)

#RecipeIngredient instances
dinner = RecipeIngredient.new(pasta, milk)
meal = RecipeIngredient.new(pasta, sauce)


binding.pry
