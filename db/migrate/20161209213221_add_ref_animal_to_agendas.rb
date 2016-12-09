class AddRefAnimalToAgendas < ActiveRecord::Migration[5.0]
  def change
    add_column :agendas, :animal_id, :integer
  end
end
