class Artistum < ApplicationRecord
  has_many :albums, foreign_key: 'artista_id', dependent: :destroy
  has_many :integrantes, foreign_key: 'artista_id', dependent: :destroy
  has_many :musica_artistum
  has_many :musicas, through: :musica_artistum

  validates :nome_artistico, presence: true
  validates :tipo, presence: true
end