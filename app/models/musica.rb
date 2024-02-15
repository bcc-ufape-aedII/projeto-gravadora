class Musica < ApplicationRecord
  belongs_to :album

  validates :titulo, presence: true, length: { maximum: 100 }
  validates :duracao, presence: true
  validates :data_lancamento, presence: true
  validates :genero, presence: true
  validates :album, presence: true
end
