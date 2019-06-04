class ProdutoEstoque < ApplicationRecord
  validates :descricao, presence:true, length:{minimum: 5,message:'Descrição muito curta'}
  validates :preco_compra, presence: true, numericality: {message: 'Insira apenas numeros'}
  validates :quantidade, presence: true, numericality: {message: 'Insira apenas numeros'}
end
