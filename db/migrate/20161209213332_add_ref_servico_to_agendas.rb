class AddRefServicoToAgendas < ActiveRecord::Migration[5.0]
  def change
    add_column :agendas, :servico_id, :integer
  end
end
