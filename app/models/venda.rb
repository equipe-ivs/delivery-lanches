class Venda < ApplicationRecord
  validates :produto_id,presence: true, numericality: {message: "Campo obrigatorio"}
  validates :cliente_id,presence: false,numericality: {message: "Campo obrigatorio"}
  validates :quantidade,presence: true,numericality: {message: "Campo obrigatorio"}
  validates :total,presence: true,numericality: {message: "Campo obrigatorio"}
  has_many :produtos
end
