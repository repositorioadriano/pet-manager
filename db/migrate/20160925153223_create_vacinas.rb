class CreateVacinas < ActiveRecord::Migration[5.0]
  def change
    create_table :vacinas do |t|
      t.string :vacina

      t.timestamps
    end
  end
end
