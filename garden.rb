class Garden
  attr_reader :garden_name, :address, :neighborhood_name

  def initialize(args ={})
    @neighborhood_name = args["neighborhoodname"]
    @garden_name = args["garden_name"]
    @address = args["address"]
  end

end
