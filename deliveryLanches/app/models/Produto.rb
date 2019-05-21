class Produto < ApplicationRecord
  validates :id, :descricao, :preco_custo, presence: true
end