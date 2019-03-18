class RecipeCard

  @@all = []

  attr_accessor :date, :rating, :user

  def initialize(date, rating, user)
    @date = date
    @rating = rating
    @user = user


    @@all << self
  end

  def all
  	@@all	
  end

end
