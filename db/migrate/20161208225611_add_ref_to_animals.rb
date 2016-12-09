class AddRefToAnimals < ActiveRecord::Migration[5.0]
  def change
    add_column :animals, :cliente_id, :integer
    add_column :animals, :references, :clientes
  end
end
