class Recipe

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipe_card
    RecipeCard.all.select do |list|
      list.recipe == self
    end
  end

  def recipe_ingredient
    RecipeIngredient.all.select do |list|
      list.recipe == self
    end
  end

  def allergen_all
    Allergen.all.select do |list|
      list.ingredient
    end
  end

  def self.recipe_card
    RecipeCard.all
  end

  def self.recipe_list
    RecipeCard.all.map do |list|
      list.recipe
    end
  end

  def self.most_popular
    something = self.recipe_list.group_by { |h| h}
    the_values = something.map { |k, v| v.length}
     the_num = the_values.max {|a, b| a <=> b}
      something.find { |k,v| if v.length == the_num
       k
     end}.flatten.first
  end

  def users
    recipe_card.map do |list|
      list.user
    end
  end

  def ingredients
    recipe_ingredient.map do |list|
      list.ingredient
    end
  end

  # def allergens
  #   recipe_ingredient.map do |list|
  #     allergen_all.include?(list)
  #       list
  #   #   end
  #   # Allergen.all.map do |v|
  #   #   v.ingredients
  #
  #   end
  # end



  def add_ingredients(new_ingredients)
    RecipeIngredient.new(self, new_ingredients)
  end

end
