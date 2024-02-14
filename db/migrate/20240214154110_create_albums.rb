class CreateAlbums < ActiveRecord::Migration[7.0]
  def change
    create_table :albums do |t|
      t.string :titulo
      t.date :data_lancamento
      t.references :artista, null: false, foreign_key: true

      t.timestamps
    end
  end
end
