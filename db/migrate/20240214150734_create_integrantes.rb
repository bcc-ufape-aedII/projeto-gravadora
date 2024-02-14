class CreateIntegrantes < ActiveRecord::Migration[7.0]
  def change
    create_table :integrantes do |t|
      t.string :nome
      t.string :cpf
      t.string :funcao
      t.references :artista, null: false, foreign_key: true

      t.timestamps
    end
  end
end
