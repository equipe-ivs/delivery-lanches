class Venda < ApplicationRecord
  validates :cliente_id,presence: false,numericality: {message: "Campo obrigatorio"}
  belongs_to :cliente
  has_many :produto_vendas,dependent: :destroy

  def calcularTotal
    total = 0
    produto_vendas.each do |p|
      total += (p.quantidade * p.preco_venda)
    end
    total
  end
end
