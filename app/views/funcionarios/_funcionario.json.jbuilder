json.extract! funcionario, :id, :nome, :cpf, :senha, :created_at, :updated_at
json.url funcionario_url(funcionario, format: :json)
