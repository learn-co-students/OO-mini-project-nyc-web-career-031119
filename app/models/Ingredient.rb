class Ingredient

  @@all = []

  attr_accessor

  def initialize
  	@all << self
  end

  def all
  	@@all
  end

end
