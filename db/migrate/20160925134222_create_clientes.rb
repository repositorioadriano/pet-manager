class CreateClientes < ActiveRecord::Migration[5.0]
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :cpf
      t.string :endereco
      t.string :bairro
      t.string :cep
      t.string :cidade
      t.string :uf
      t.string :telefone
      t.string :celular
      t.string :email
      t.date :dt_nascimento

      t.timestamps
    end
  end
end
