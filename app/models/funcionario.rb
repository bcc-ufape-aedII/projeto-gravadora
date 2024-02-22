class Funcionario < ApplicationRecord
  has_many :contrato_funcionarios
  has_many :contratos, through: :contrato_funcionarios, dependent: :destroy

  has_many :album_funcionarios
  has_many :albums, through: :album_funcionarios, dependent: :destroy

  has_many :musica_funcionarios
  has_many :musicas, through: :musica_funcionarios, dependent: :destroy

  validates :nome, presence: true
  validates :cpf, presence: true, uniqueness: true, length: { is: 11 }, numericality: { only_integer: true }
  validates :salario, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :cargo, presence: true

  def nome_com_id
    "#{nome} [ID #{id}]"
  end
end
