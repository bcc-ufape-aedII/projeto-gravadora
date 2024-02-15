class Funcionario < ApplicationRecord
  validates :nome, presence: true
  validates :cpf, presence: true, uniqueness: true, length: { is: 11 }, numericality: { only_integer: true }
  validates :salario, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :cargo, presence: true
end
