require_relative 'api-parser'
require_relative 'garden'
require_relative 'garden_list'
require_relative 'view'

class Controller

  attr_reader :view, :garden_list

  def initialize
    @view = View.new
    @garden_list = GardenList.new
  end


  def run
    view.welcome
    sleep(1)
    neighborhood_choice = view.get_neighborhood_info
    garden_list.return_garden(neighborhood_choice)
    user_garden = garden_list.random_garden
    view.print_garden(user_garden)
    sleep(1)
    veg_choice = view.pick_some_veg
    view.print_found_recipe(garden_list.find_recipe(veg_choice))

  end
end
