class Funcionario < ApplicationRecord
  validates :nome, presence: true, length: {minimum: 5}
  validates :cpf, presence: true, length: {:is => 11}, numericality: {message: "Campo Obrigatório"}, uniqueness: {message: "CPF Já Consta no Sistema"}
  validates :senha, presence: true, length: {minimum: 4}
  has_many :vendas

end
