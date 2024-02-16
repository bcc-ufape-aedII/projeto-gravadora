class AlbumFuncionario < ApplicationRecord
  belongs_to :album
  belongs_to :funcionario
end
