class User

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
      list.user == self
    end
  end

  def recipes
    recipe_card.map do |list|
      list.recipe
    end
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(self, recipe, date, rating)
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def allergen_all
    Allergen.all.select do |list|
      list.user == self
    end
  end

  def allergens
    allergen_all.map do |list|
      list.ingredient
      end
    end

    def top_three_recipes
    sorted_array = recipe_card.map do |list|
        list.rating
      end
      sorted_array.sort!.slice(-3, 3)
    end

    def most_recent_recipe
    last_date = recipe_card.map do |list|
        list.date
      end.last
      recipe_card.map do |ls|
        # ls.include?(last_date)
        if ls.date == last_date
          ls.recipe
        end
      end
    end

end
