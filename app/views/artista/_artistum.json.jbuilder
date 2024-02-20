json.extract! artistum, :id, :nome_artistico, :tipo, :created_at, :updated_at
json.url artistum_url(artistum, format: :json)

json.integrantes artistum.integrantes do |integrante|
  json.extract! integrante, :id, :nome, :cpf, :funcao, :created_at, :updated_at
end
