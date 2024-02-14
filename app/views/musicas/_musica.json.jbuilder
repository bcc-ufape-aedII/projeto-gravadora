json.extract! musica, :id, :titulo, :duracao, :data_lancamento, :genero, :album_id, :created_at, :updated_at
json.url musica_url(musica, format: :json)
