class Ingredient

	attr_accessor :name

	def initialize(name)
		@name = name	
		@@all << self
	end

	@@all = []

	def self.all
		@@all
	end

	def self.most_common_allergen
		#return an Ingrendient instance
		counts = Hash.new 0

		Allergen.all.each do |instance|
		  counts[instance.ingredient] += 1
		end
		counts.max_by {|ingredient, count| count}[0]
	end
end
