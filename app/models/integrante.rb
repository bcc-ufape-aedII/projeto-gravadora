class Integrante < ApplicationRecord
  belongs_to :artista

  validates :nome, presence: true
  validates :cpf, presence: true, uniqueness: true, length: { is: 11 }, numericality: { only_integer: true }
  validates :funcao, presence: true
  validates :artista, presence: true
end