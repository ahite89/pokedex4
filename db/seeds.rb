# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
json = Pokemon.save_data_from_api
pokemon_array = []
json.each { |row| pokemon_array << [row["name"], row["resource_uri"].split("/").last.to_i] }

ordered_pokemon = pokemon_array.sort_by &:last
ordered_pokemon.each { |name, number| Pokemon.create(name: name, number: number) }
