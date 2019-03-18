require "time"

class RecipeCard

	attr_accessor :user, :recipe, :date, :rating

	def initialize(user, recipe, rating)
		@user = user
		@recipe = recipe
		@rating = rating
		@date = Time.now.to_s
		@@all << self
	end

	@@all = []

	def self.all
		@@all
	end

end