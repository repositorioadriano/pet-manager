class CreateProdutos < ActiveRecord::Migration[5.0]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.string :marca
      t.string :grupo
      t.string :tipo
      t.float :peso
      t.decimal :preco_venda
      t.date :validade
      t.integer :lote
      t.decimal :preco_compra

      t.timestamps
    end
  end
end
