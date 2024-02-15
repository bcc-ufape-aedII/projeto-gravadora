class CreateContratoFuncionarios < ActiveRecord::Migration[7.0]
  def change
    create_table :contrato_funcionarios do |t|
      t.references :contrato, null: false, foreign_key: true
      t.references :funcionario, null: false, foreign_key: true

      t.timestamps
    end
  end
end
