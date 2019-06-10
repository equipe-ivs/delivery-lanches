class ProdutoVenda < ApplicationRecord
  validates :produto_id,presence: true
  belongs_to :venda
end
