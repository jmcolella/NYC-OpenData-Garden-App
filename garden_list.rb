require_relative 'garden'

class GardenList
  attr_reader :garden_list, :recipes

  include Parseable

  def initialize
    @garden_list = []
    @recipes = [{name: "Roasted Carrot Tomato Basil Soup" , ingredients: "carrots", link: 'http://www.epicurious.com/recipes/food/views/roasted-carrot-and-tomato-soup-with-basil-102204'}, {name: "Tomato Mozzarella Salad" , ingredients: "tomatoes", link: 'http://allrecipes.com/recipe/222659/tomato-mozzarella-salad/'}, {name: "Cheesy Scalloped Potatoes" , ingredients: "potatoes",link: 'http://www.food.com/recipe/scalloped-potatoes-85629'}, {name: "Stuffed Peppers" , ingredients: "peppers", link: 'http://www.bettycrocker.com/recipes/stuffed-peppers/63e29e18-903e-467c-aec5-fba4ce3a138f'}, {name: "Sweet and Sour Cucumbers" , ingredients: "cucumbers", link: 'http://www.epicurious.com/recipes/food/views/sweet-and-sour-cucumbers-with-fresh-dill-109713'}]
  end

  def return_garden(neighborhood)
    case neighborhood.downcase
      when "bed-stuy", "1"
        Parseable.parse_bed_stuy.each do |garden|
          garden_list << Garden.new(garden)
        end
      when "red hook", "2"
        Parseable.parse_red_hook.each do |garden|
          garden_list << Garden.new(garden)
        end
      when "park slope", "3"
        Parseable.parse_park_slope.each do |garden|
          garden_list << Garden.new(garden)
        end
      when "williamsburg", "4"
        Parseable.parse_williamsburg.each do |garden|
          garden_list << Garden.new(garden)
        end
      when "bushwick", "5"
        Parseable.parse_bushwick.each do |garden|
          garden_list << Garden.new(garden)
        end
      end
    garden_list
  end

  def random_garden
    random_garden_choice = garden_list.sample
    random_garden_choice
  end

  def find_recipe(input_ingredient)
    recipes.find do |recipe|
      recipe[:ingredients].include?(input_ingredient)
    end
  end

end
