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

  def self.all_allergies
    Allergen.all.map do |list|
      list.ingredient
    end
  end

  def self.most_common_allergen
    something = self.all_allergies.group_by { |h| h}
    the_values = something.map { |k, v| v.length}
     the_num = the_values.max {|a, b| a <=> b}
      something.find { |k,v| if v.length == the_num
       k
     end}.flatten.first
    # self.all_allergies.max_by {|x| x}

  end

end
