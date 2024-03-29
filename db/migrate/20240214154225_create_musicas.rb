class CreateMusicas < ActiveRecord::Migration[7.0]
  def change
    create_table :musicas do |t|
      t.string :titulo
      t.time :duracao
      t.date :data_lancamento
      t.string :genero
      t.references :album, null: false, foreign_key: true

      t.timestamps
    end
  end
end
