class Recipe
attr_accessor :name, :ingredients
@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def users
    RecipeCard.all.select do
    |card| card.recipe == self.name
    end.map{|card| card.user}
  end

  def self.most_popular #sorts through user array which ends in the longest array by nature
    all.sort_by {|recipe| recipe.users.length}[-1]
  end #returns the most popular recipe based on length of user array


  def recipe_ingredients
    RecipeIngredient.all.select{|ingredient| ingredient.recipe == self}
  end

  def ingredients
    recipe_ingredients.map{|ri| ri.ingredient}
  end

  def allergens
    Allergen.all.map {|allergen| allergen.ingredient} & ingredients
  end

  def add_ingredients(ingredients)
    ingredients.each do |ingredient|
      RecipeIngredient.new(ingredient, self)
    end
  end

end
