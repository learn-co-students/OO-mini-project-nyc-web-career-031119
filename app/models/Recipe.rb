require 'pry'

class Recipe

@@all = []

attr_accessor :name, :ingedients, :users

	def initialize(name, ingedients, users)
		#instance variables
		@name = name
		@ingedients = ingedients
		@users = users
		#class variable
		@@all << self

	end

	def all
		@@all
	end


	def most_popular
		binding.pry
	end


end

