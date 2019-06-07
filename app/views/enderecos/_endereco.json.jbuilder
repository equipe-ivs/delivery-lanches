json.extract! endereco, :id, :rua, :numero, :bairro, :cidade, :created_at, :updated_at
json.url endereco_url(endereco, format: :json)
