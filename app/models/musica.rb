class Musica < ApplicationRecord
  belongs_to :album

  has_many :musica_artistum
  has_many :artistum, through: :musica_artistum

  has_many :musica_funcionarios
  has_many :funcionarios, through: :musica_funcionarios

  validates :titulo, presence: true, length: { maximum: 100 }
  validates :duracao, presence: true
  validates :data_lancamento, presence: true
  validates :genero, presence: true
  validates :album, presence: true
end
