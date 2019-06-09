class Venda < ApplicationRecord
  validates :cliente_id,presence: false,numericality: {message: "Campo obrigatorio"}
  belongs_to :cliente
  has_many :produto_vendas,dependent: :destroy
end
