class Venda < ApplicationRecord
  belongs_to :produto
  belongs_to :cliente
  has_many :produto
  validates :valorVenda, presence: { message: 'É um campo obrigatório' }
  validates :valorVenda, numericality: { message: 'É um campo apenas numérico' }
  validates :valorVenda, numericality: { greater_than_or_equal_to: 0, message: 'Deve ser maior ou igual a zero' }
  validates :quantidade,presence: { message: 'É um capo obrigatório' }
  validates :quantidade, numericality: { message: 'É um campo apenas numérico' }
  validates :quantidade, numericality: { greater_than_or_equal_to: 1, message: 'Deve ser maior ou igual a um' }

end
