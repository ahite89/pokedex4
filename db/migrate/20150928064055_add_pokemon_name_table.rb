class AddPokemonNameTable < ActiveRecord::Migration
  def change
    create_table :pokemons do |t|
      t.string :name, null: false
    end
  end
end
