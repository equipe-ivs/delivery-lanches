class Venda < ApplicationRecord

  belongs_to :Produto
  #Entrará Cliente belongs_to :Cliente

  validates :valorVenda, presence: { message: 'É um campo obrigatório' }
  validates :valorVenda, numericality: { message: 'É um campo apenas numérico' }
  validates :valorVenda, numericality: { greater_than_or_equal_to: 0, message: 'Deve ser maior ou igual a zero' }

end
