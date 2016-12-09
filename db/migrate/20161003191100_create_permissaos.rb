class CreatePermissaos < ActiveRecord::Migration[5.0]
  def change
    create_table :permissaos do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
