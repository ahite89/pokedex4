class Pokemon < ActiveRecord::Base

  def self.save_data_from_api
   response = HTTParty.get("http://pokeapi.co/api/v1/pokedex/1/")
   pokemon = response["pokemon"]
   pokemon_parsed = JSON.parse(pokemon.to_json)

   name = pokemon_parsed.each { |row| row["name"] }
   number = pokemon_parsed.each { |row| row[""] }
 end

 validates :name, presence: true
end
