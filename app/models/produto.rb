class Produto < ApplicationRecord
  validates :descricao, presence: { message: 'É um campo obrigatório' }
  validates :descricao, length: { minimum: 2, message: ' tem menos de 2 caracteres' }
  validates :descricao, length: { maximum: 100, message: ' tem mais de 100 caracteres' }
end
