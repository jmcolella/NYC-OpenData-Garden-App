require 'json'
require 'open-uri'

module Parseable

  def self.parse_bed_stuy
    JSON.parse(open('https://data.cityofnewyork.us/resource/yes4-7zbb.json?neighborhoodname=Bed-Stuy').read)
  end

   def self.parse_red_hook
    JSON.parse(open('https://data.cityofnewyork.us/resource/yes4-7zbb.json?neighborhoodname=Red%20Hook').read)
    end

   def self.parse_park_slope
    JSON.parse(open('https://data.cityofnewyork.us/resource/yes4-7zbb.json?neighborhoodname=Park%20Slope').read)
    end

   def self.parse_williamsburg
    JSON.parse(open('https://data.cityofnewyork.us/resource/yes4-7zbb.json?neighborhoodname=Williamsburg').read)
    end

   def self.parse_bushwick
    JSON.parse(open('https://data.cityofnewyork.us/resource/yes4-7zbb.json?neighborhoodname=Bushwick').read)
    end

end

