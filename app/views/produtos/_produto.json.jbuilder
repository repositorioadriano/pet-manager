json.extract! produto, :id, :nome, :marca, :grupo, :tipo, :peso, :preco_venda, :validade, :lote, :preco_compra, :created_at, :updated_at
json.url produto_url(produto, format: :json)