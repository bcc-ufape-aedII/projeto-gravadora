#json.partial! "funcionarios/funcionario", funcionario: @funcionario_atuacao
# app/views/funcionarios/buscar_atuacoes.json.builder

json.funcionario do
  json.id @funcionario_atuacao.id
  json.nome @funcionario_atucao.nome
  # Inclua outros atributos que você deseja retornar sobre o funcionário
end

json.contratos @contratos.map { |contrato|
  {
    id: "contrato.id",
    nome: "contrato.nome",
    # Inclua outros atributos do contrato que você deseja retornar
  }
}

json.musicas @musicas.map { |musica|
  {
    id: "musica.id",
    nome: "musica.nome",
    # Inclua outros atributos da música que você deseja retornar
  }
}

json.albuns @albuns.map { |album|
  {
    id: "album.id",
    nome: "album.nome",
    # Inclua outros atributos do álbum que você deseja retornar
  }
}
