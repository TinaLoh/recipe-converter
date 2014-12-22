class RecipeConverter
  attr_reader :ingredients

def initialize(ingredients)
  @ingredients = ingredients
end

def to_tablespoons
  @ingredients.each { |k, v| @ingredients[k] = v/15}
end

def to_cups
  @ingredients.each { |k, v| @ingredients[k] = v/16}
end

end
