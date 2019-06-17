class Cliente < ApplicationRecord
  validates :nome, presence: true,length: {minimum: 5}
  validates :cpf,presence: true,length: {minimum: 11,maximum: 11},numericality: {message: "Campo obrigatorio"}, uniqueness: {message: 'CPF Já Consta no Sistema'}
  validates :telefone,presence: false,length:{minimum: 9}
  has_one :endereco
  has_many :vendas
end
