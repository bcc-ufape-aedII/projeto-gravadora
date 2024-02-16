class CreateMusicaFuncionarios < ActiveRecord::Migration[7.0]
  def change
    create_table :musica_funcionarios do |t|
      t.references :musica, null: false, foreign_key: true
      t.references :funcionario, null: false, foreign_key: true

      t.timestamps
    end
  end
end
