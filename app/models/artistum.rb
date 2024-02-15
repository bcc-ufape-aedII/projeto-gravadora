class Artistum < ApplicationRecord
  has_many :albums, dependent: :destroy
  has_many :integrantes, dependent: :destroy

  has_many :musica_artistum
  has_many :musicas, through: :musica_artistum

  validates :nome_artistico, presence: true
  validates :tipo, presence: true
end