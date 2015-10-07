class AddStatsToTable < ActiveRecord::Migration
  def change
    add_column :pokemons, :evolution, :string
    add_column :pokemons, :description, :string
    add_column :pokemons, :moves, :string
    add_column :pokemons, :type, :string
    add_column :pokemons, :hp, :integer
    add_column :pokemons, :attack, :integer
    add_column :pokemons, :defense, :integer
    add_column :pokemons, :sp_atk, :integer
    add_column :pokemons, :sp_def, :integer
    add_column :pokemons, :speed, :integer
    add_column :pokemons, :height, :string
    add_column :pokemons, :weight, :string
  end
end
