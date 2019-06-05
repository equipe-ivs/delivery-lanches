json.extract! produto_estoque, :id, :descricao, :preco_compra, :quantidade, :created_at, :updated_at
json.url produto_estoque_url(produto_estoque, format: :json)
