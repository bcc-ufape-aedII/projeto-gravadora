class CreateFuncionarios < ActiveRecord::Migration[7.0]
  def change
    create_table :funcionarios do |t|
      t.string :nome
      t.string :cpf
      t.integer :salario
      t.text :cargo

      t.timestamps
    end
  end
end
