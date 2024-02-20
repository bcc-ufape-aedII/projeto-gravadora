class Artistum < ApplicationRecord
  has_many :albums, foreign_key: 'artista_id', dependent: :destroy, class_name: 'Album'
  has_many :integrantes, foreign_key: 'artista_id', dependent: :destroy, class_name: 'Integrante'
  has_many :musica_artistum
  has_many :musica, through: :musica_artistum

  accepts_nested_attributes_for :integrantes
  validates :nome_artistico, presence: true
  validates :tipo, presence: true
end