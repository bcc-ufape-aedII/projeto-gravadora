json.extract! funcionario, :id, :nome, :cpf, :salario, :cargo, :created_at, :updated_at
json.url funcionario_url(funcionario, format: :json)
