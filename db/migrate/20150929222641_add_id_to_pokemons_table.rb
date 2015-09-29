class AddIdToPokemonsTable < ActiveRecord::Migration
  def change
    add_column :pokemons, :number, :integer
  end
end
