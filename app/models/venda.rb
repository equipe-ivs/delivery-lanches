class Venda < ApplicationRecord
  validates :cliente_id,presence: false,numericality: {message: "Campo obrigatorio"}
  validates :quantidade,presence: true,numericality: {message: "Campo obrigatorio"}
  validates :total,presence: true,numericality: {message: "Campo obrigatorio"}
  belongs_to :cliente
  has_many :produtos
end
