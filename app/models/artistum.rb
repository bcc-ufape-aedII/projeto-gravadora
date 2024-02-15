class Artistum < ApplicationRecord
  has_many :albums, dependent: :destroy
  has_many :integrantes, dependent: :destroy

  validates :nome_artistico, presence: true
  validates :tipo, presence: true
end