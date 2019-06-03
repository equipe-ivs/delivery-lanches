class Produto < ApplicationRecord
  validates :descricao,presence:true ,length: {minimum: 5}
  validates :preco,presence: true,numericality: {message: "Insira apenas numeros"}
  belongs_to :venda
end
