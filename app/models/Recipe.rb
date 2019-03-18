class Recipe
	@@all = []

	def self.all
		@@all
	end

	def self.most_popular
		#Recipes -> Users
		counts = Hash.new 0

		RecipeCard.all.each do |instance|
		  counts[instance.recipe] += 1
		end
		counts.max_by {|recipe, count| count}
	end

	attr_accessor :name

	def initialize(name)
		@name = name
		@@all << self
	end

	def recipe_cards
		RecipeCard.all.select { |recipe_card| recipe_card.recipe == self }
	end

	def users
		recipe_cards.collect { |recipe_card| recipe_card.user }
	end


	def ingredients
		RecipeIngredient.all.select { |recipe_ingredient| recipe_ingredient.recipe == self }.map {|instance| instance.ingredient}
	end

	def allergens
		Allergen.all.select do |allergen_instance|
			self.ingredients.include?(allergen_instance.ingredient)
		end
	end

	def add_ingredients(ingredients)
		ingredients.each do |ingredient|
			RecipeIngredient.new(self,ingredient)
		end
	end
end