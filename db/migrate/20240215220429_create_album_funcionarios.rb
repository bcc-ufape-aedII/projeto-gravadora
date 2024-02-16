class CreateAlbumFuncionarios < ActiveRecord::Migration[7.0]
  def change
    create_table :album_funcionarios do |t|
      t.references :album, null: false, foreign_key: true
      t.references :funcionario, null: false, foreign_key: true

      t.timestamps
    end
  end
end
