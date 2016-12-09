class AddRefToFichaAnimals < ActiveRecord::Migration[5.0]
  def change
    add_column :ficha_animals, :animal_id, :integer
    add_column :ficha_animals, :references, :animals
  end
end
