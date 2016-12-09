class CreateServicos < ActiveRecord::Migration[5.0]
  def change
    create_table :servicos do |t|
      t.string :servico
      t.decimal :valor
      t.string :tempo

      t.timestamps
    end
  end
end
