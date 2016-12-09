class CreateAgendas < ActiveRecord::Migration[5.0]
  def change
    create_table :agendas do |t|
      t.date :data_agendamento
      t.datetime :hora
      t.string :entrada
      t.string :saida
      t.string :status

      t.timestamps
    end
  end
end
