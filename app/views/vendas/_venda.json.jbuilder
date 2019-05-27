json.extract! venda, :id, :produto, :cliente, :quantidade, :valorTotal, :created_at, :updated_at
json.url venda_url(venda, format: :json)
