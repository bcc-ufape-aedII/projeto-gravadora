class CreateContratos < ActiveRecord::Migration[7.0]
  def change
    create_table :contratos do |t|
      t.date :data_inicio
      t.date :data_fim
      t.text :clausulas
      t.decimal :valor
      t.references :artista, null: false, foreign_key: true

      t.timestamps
    end
  end
end
