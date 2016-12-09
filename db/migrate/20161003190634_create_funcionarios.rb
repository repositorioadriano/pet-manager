class CreateFuncionarios < ActiveRecord::Migration[5.0]
  def change
    create_table :funcionarios do |t|
      t.string :nome
      t.string :funcao
      t.string :endereco
      t.string :bairro
      t.string :cep
      t.string :uf
      t.string :login
      t.string :senha
      t.string :fone
      t.string :celular
      t.string :email

      t.timestamps
    end
  end
end
