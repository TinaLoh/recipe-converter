require 'rspec'
require 'recipe_converter'

describe RecipeConverter do
  it "works" do
    expect(true).to eq(true)
  end


  it "converts grams to tablespoons" do
      ingredients = {
        "sugar" => 15,
        "flour" => 30,
      }

      recipe = RecipeConverter.new(ingredients)

      expected = {
        "sugar" => 1,
        "flour" => 2,
      }
      expect(recipe.to_tablespoons).to eq(expected)
  end

  it "converts tablespoons to cups" do
    ingredients = {
      "sugar" => 16,
      "flour" => 32,
    }

    recipe = RecipeConverter.new(ingredients)

    expected = {
      "sugar" => 1,
      "flour" => 2,
    }
    expect(recipe.to_cups).to eq(expected)
  end

end
