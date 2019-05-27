json.extract! produto, :id, :id, :descricao, :precoCompra, :precoVenda, :created_at, :updated_at
json.url produto_url(produto, format: :json)
