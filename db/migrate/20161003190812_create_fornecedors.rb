class CreateFornecedors < ActiveRecord::Migration[5.0]
  def change
    create_table :fornecedors do |t|
      t.string :razao_social
      t.string :fantasia
      t.string :cnpj
      t.string :endereco
      t.string :bairro
      t.string :cidade
      t.string :cep
      t.string :telefone
      t.string :email

      t.timestamps
    end
  end
end
