class Album < ApplicationRecord
  belongs_to :artista
  has_many :musicas, dependent: :destroy

  validates :titulo, presence: true, uniqueness: { scope: :artista_id }
  validates :data_lancamento, presence: true
  validates :artista, presence: true
end
