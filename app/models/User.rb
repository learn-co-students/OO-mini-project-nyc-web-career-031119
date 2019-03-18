class User

  @@all = []

  attr_accessor :recipes, :name

  def initialize(name, recipes)
    #instance variables
    @recipes = recipes
    @name = name

    @@all << self
  end

end
