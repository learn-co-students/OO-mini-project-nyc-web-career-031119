class Recipe
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.most_popular
    @@all.sort_by! do |recipe|
      recipe.users.length
    end.last
  end

  def add_ingredients(arr)
    arr.each do |ingredient|
      RecipeIngredient.new(ingredient, self)
    end
  end

  def users
    RecipeCard.all.select do |recipecard|
      recipecard.recipe == self
    end
  end

  def ingredients
    recipe_ingredients.map do |recipe_ingredient|
      recipe_ingredient.ingredient
    end
  end

  def allergens
    ingredients.select do |ingredient|
      ingredient.allergens.length > 0
    end
  end

  def recipe_ingredients
    RecipeIngredient.all.select do |recipe_ingredients|
      recipe_ingredients.recipe == self
    end
  end

  def self.all
    @@all
  end
end
