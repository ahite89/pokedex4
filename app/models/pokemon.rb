class Pokemon < ActiveRecord::Base

  def self.save_data_from_api
   dex_response = HTTParty.get("http://pokeapi.co/api/v1/pokedex/1/")
   pokemon = dex_response["pokemon"]
   pokemon_parsed = JSON.parse(pokemon.to_json)

   name = pokemon_parsed.each { |row| row["name"] }
   number = pokemon_parsed.each { |row| row["resource_uri"].split("/").last.to_i }

   ordered = {}
   pokemon_parsed.each do |row|
    number = row["resource_uri"].split("/").last.to_i
      ordered[row["name"].capitalize] = number
    end

  stats_response = HTTParty.get("http://pokeapi.co/api/v1/pokemon/1/")


 end

 validates :name, presence: true
 validates :number, presence: true
end
