class Ingredient

  attr_accessor :name
  @@all =[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def users
    Allergen.all.select{ |allergen| allergen.ingredient == self }
  end

  def self.allergens
    all.map{|ingredient| ingredient.users}.flatten
  end

  def self.most_common_allergen
    all.sort_by{|ingredient| ingredient.users.length}[-1]
  end
end
