class Venda < ApplicationRecord
  validates :produto, presence: { message: 'É um campo obrigatório' }
  validates :produto, length: { minimum: 3, message: ' tem menos de 3 caracteres' }
  validates :cliente, presence: { message: 'É um campo obrigatório' }
  validates :cliente, length: { minimum: 3, message: ' tem menos de 3 caracteres' }
  validates :quantidade, numericality: { greater_than_or_equal_to: 1, message: ' deve ser maior ou igual a um' }
end
