require 'colorize'
class View

  def welcome
    puts "----------------------------------".center(100)
    puts "Welcome to Brooklyn Green Thumb!".colorize(:green).center(115)
    puts "----------------------------------".center(100)
    puts
    puts "                      .-~~-.--.".colorize(:magenta)
    puts "                     :         )".colorize(:magenta)
    puts "               .~ ~ -.\       /.- ~~ .".colorize(:magenta)
    puts "               >       `.   .'       <".colorize(:magenta)
    puts "              (         .- -.         )".colorize(:magenta)
    puts "               `- -.-~  `- -'  ~-.- -'".colorize(:magenta)
    puts "                 (        :        )           _ _ .-:".colorize(:magenta)
    puts "                  ~--.    :    .--~        .-~  .-~  }".colorize(:magenta)
    puts "                      ~-.-^-.-~ \_      .~  .-~   .~".colorize(:magenta)
    puts "                               \ \'     \ '_ _ -~".colorize(:magenta)
    puts "                                `.`.    //".colorize(:magenta)
    puts "                       . - ~ ~-.__`.`-.//".colorize(:magenta)
    puts "                   .-~   . - ~  }~ ~ ~-.~-.".colorize(:magenta)
    puts "                 .' .-~      .-~       :/~-.~-./:".colorize(:magenta)
    puts "                /_~_ _ . - ~                 ~-.~-._".colorize(:magenta)
    puts "                                                 ~-.<".colorize(:magenta)
  end

  def get_neighborhood_info
    puts "Choose a neighborhood to find a random community garden: ".colorize(:light_blue)
    puts "1. Bed-Stuy".colorize(:magenta)
    puts "2. Red Hook".colorize(:magenta)
    puts "3. Park Slope".colorize(:magenta)
    puts "4. Williamsburg".colorize(:magenta)
    puts "5. Bushwick".colorize(:magenta)
    puts
    print ">> "
    gets.chomp
  end

  def print_garden(garden)
    puts
    puts "Here is a garden near you: ".colorize(:green)
    sleep(1)
    puts "#{garden.garden_name}".colorize(:yellow)
    sleep(1)
    puts
    puts "Here's the address: ".colorize(:green)
    sleep(1)
    puts "#{garden.address}".colorize(:yellow)
  end

  def pick_some_veg
    puts
    puts "Pick one of the following to plant in your community garden:".colorize(:light_blue)
    puts
    sleep(1)
    puts "Carrots".colorize(:magenta)
    sleep(0.5)
    puts "Tomatoes".colorize(:yellow)
    sleep(0.5)
    puts "Potatoes".colorize(:magenta)
    sleep(0.5)
    puts "Peppers".colorize(:yellow)
    sleep(0.5)
    puts "Cucumbers".colorize(:magenta)
    puts
    print ">> "
    gets.chomp
  end

  def print_found_recipe(recipe)
    puts
    sleep(1)
    puts "You can make ".colorize(:light_green) + "#{recipe[:name]}".colorize(:magenta) + " with your ingredients.".colorize(:light_green)
    sleep(0.5)
    puts "You can visit the recipe here: ".colorize(:light_green) + "#{recipe[:link]}.".colorize(:magenta)
  end
end







