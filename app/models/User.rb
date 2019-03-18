class User

	attr_accessor :name

	def initialize(name)
		@name = name
		@@all << self
	end

	@@all = []

	def self.all
		@@all
	end

	def recipe_cards
		RecipeCard.all.select { |recipe_card| recipe_card.user == self }
	end

	def recipes
		recipe_cards.collect { |recipe_card| recipe_card.recipe }
	end

	def add_recipe_card(recipe, rating)
		RecipeCard.new(self, recipe, rating)
	end

	def allergens
		Allergen.all.select do |allergen_instance|
			allergen_instance.user == self
		end.map { |allergen_instance| allergen_instance.ingredient }
	end

	def declare_allergen(ingredient)
		Allergen.new(self, ingredient)
	end

	def top_three_recipes
		#RecipeCard.all.sort_by {|instance| instance.rating}[0..2].map { |instance| instance.recipe}
		RecipeCard.all.max_by(3) {|instance|instance.rating}.map { |instance| instance.recipe}
	end

	def most_recent_recipe
		self.recipe_cards.last.recipe
		#RecipeCard.all.select {|instance| instance.user == self}
	end

	def safe_recipes
		Recipe.all.reject do |recipe| 
			recipe.ingredients.any? {|ingredient| self.allergens.include?(ingredient)}
		end

		# my_allergens = self.allergens
		# all_recipes = RecipeCard.all.map {|instance| instance.recipe}
		
		# all_recipes.select do |recipe| 
		# 	!recipe.ingredients.any? {|ingredient| my_allergens.include?(ingredient)}
		# end.uniq



	end
end