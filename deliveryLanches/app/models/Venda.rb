class Venda < ApplicationRecord
  has_many :Produto
  validates :id, :valorTotal, presence: true
end