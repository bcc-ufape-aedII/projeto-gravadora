class MusicaFuncionario < ApplicationRecord
  belongs_to :musica
  belongs_to :funcionario
end
