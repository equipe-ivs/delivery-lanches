json.extract! cliente, :id, :nome, :string, :cpf, :string, :endereco, :string, :bairro, :string, :cidade, :string, :estado, :string, :pontoDeReferencia, :string, :telefone, :string, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
