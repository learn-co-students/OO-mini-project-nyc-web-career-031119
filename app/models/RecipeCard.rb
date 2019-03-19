class RecipeCard
  @@all = []
  attr_accessor :date, :rating, :user, :recipe

  def initialize(user, recipe, rating)
    @user = user
    @recipe = recipe
    @date = Time.now.strftime("%Y-%m-%d")
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end

end
