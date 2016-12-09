Rails.application.routes.draw do
  resources :animals, :fichas, :agendas, :contas, :vacinas, :clientes, :produtos,
            :servicos, :fornecedors, :funcionarios
  root 'agendas#index'
end
