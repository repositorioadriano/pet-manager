class CreateAnimals < ActiveRecord::Migration[5.0]
  def change
    create_table :animals do |t|
      t.string :nome
      t.string :cor
      t.date :dt_nascimento
      t.string :raca
      t.string :sexo

      t.timestamps
    end
  end
end
