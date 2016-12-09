class CreateFichaAnimals < ActiveRecord::Migration[5.0]
  def change
    create_table :ficha_animals do |t|
      t.date :data_ultima_vacina
      t.string :nome_vacina
      t.date :data_proxima_vacina
      t.string :nome_proxima_vacina
      t.float :dose

      t.timestamps
    end
  end
end
