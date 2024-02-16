class ContratoFuncionario < ApplicationRecord
  belongs_to :contrato
  belongs_to :funcionario
end
