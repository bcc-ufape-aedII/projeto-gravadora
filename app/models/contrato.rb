class Contrato < ApplicationRecord
  belongs_to :artistum
  has_many :contrato_funcionarios
  has_many :funcionarios, through: :contrato_funcionarios

  validates :data_inicio, presence: true
  validates :data_fim, presence: true
  validates :clausulas, presence: true
  validates :valor, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :artista, presence: true
end