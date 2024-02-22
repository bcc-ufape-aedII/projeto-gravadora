class Album < ApplicationRecord
  belongs_to :artista, class_name: "Artistum", foreign_key: "artista_id"
  has_many :musicas, dependent: :destroy

  has_many :album_funcionarios
  has_many :funcionarios, through: :album_funcionarios, dependent: :destroy

  validates :titulo, presence: true, uniqueness: { scope: :artista_id }
  validates :data_lancamento, presence: true
  validates :artista, presence: true
  validates :funcionario_ids, presence: true

  def nome_com_id
    "#{titulo} [ID #{id}]"
  end
end
