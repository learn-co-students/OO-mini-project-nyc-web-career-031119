class Ingredient
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
    @@all.sort_by! do |ingredient|
      ingredient.users.length
    end.last
  end

  def users
    Allergen.all.select do |allergen|
      allergen.ingredient == self
    end
  end
end
