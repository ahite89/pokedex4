class Pokemon < ActiveRecord::Base

  def self.save_data_from_api
   response = HTTParty.get("http://pokeapi.co/api/v1/pokedex/1/")
   pokemon = response["pokemon"]
   name = pokemon.each { |row| row["name"] }
 end
end
