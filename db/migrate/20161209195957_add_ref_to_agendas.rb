class AddRefToAgendas < ActiveRecord::Migration[5.0]
  def change
    add_column :agendas, :animal, :integer
  end
end
