class User
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def recipe_cards
    RecipeCard.all.select do |recipecard|
      recipecard.user == self
    end
  end

  def recipes
    recipe_cards.map do |recipecard|
      recipecard.recipe
    end
  end

  def add_recipe_card(rating, recipe)
    RecipeCard.new(rating, self, recipe)
  end

  def declare_allergen(ingredient)
    Allergen.new(self,ingredient)
  end

  def allergens
    Allergen.all.select do |allergen|
      allergen.user == self
    end
  end

  def top_three_recipes
    recipe_cards.sort_by! {|recipe| recipe.rating}.slice(r_length - 3, r_length)
  end

  def most_recent_recipe
    recipe_cards.inject do |least, current|
      least.date > current.date ? least : current
    end
  end

  def r_length
    recipes.length
  end
end
