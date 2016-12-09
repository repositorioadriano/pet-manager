class CreateContasRecebers < ActiveRecord::Migration[5.0]
  def change
    create_table :contas_recebers do |t|
      t.decimal :valor

      t.timestamps
    end
  end
end
