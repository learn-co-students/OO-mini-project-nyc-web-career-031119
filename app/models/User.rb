class User
  attr_accessor :name, :recipes, :allergens
  @@all = []

  def initialize(name)
    @name = name
    # @allergens = allergens
    @@all << self
  end

  def self.all
    @@all
  end

  def add_recipe_card(recipe, rating)
    RecipeCard.new(self, recipe, rating)
  end

  def declare_allergen(ingredient)
      Allergen.new(self, ingredient)
  end

  def all_recipe_cards #sets a single source of truth
    RecipeCard.all.select {|card| card.user == self}
  end

  def top_three_recipes
    all_recipe_cards.sort_by {|card| card.rating}.slice(-3, 3)
  end

  def most_recent_recipe
    all_recipe_cards.sort_by {|card| card.date}[-1]
  end

end
