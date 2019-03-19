class RecipeCard
  attr_accessor :date, :rating, :user, :recipe
  @@all = []

  def initialize(rating, user, recipe)
    @date = Time.now.strftime("%Y-%m-%d %H:%M:%S")
    @rating = rating
    @user = user
    @recipe = recipe
    @@all << self
  end

  def self.all
    @@all
  end
end
