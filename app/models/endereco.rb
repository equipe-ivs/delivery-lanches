class Endereco < ApplicationRecord
  validates :rua,presence: true,length: {minimum: 5}
  validates :numero,presence: true,length: {minimum: 1}
  validates :bairro,presence: true,length: {minimum: 5}
  validates :cidade,presence: true,length: {minimum: 5}
  belongs_to :cliente
end
