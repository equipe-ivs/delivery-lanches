class Cliente < ApplicationRecord
  validates :nome, presence: true,length: {minimum: 5}
  validates :cpf,presence: true,length: {minimum: 11,maximum: 11},numericality: {message: "Campo obrigatorio"}
  validates :telefone,presence: false,length:{minimum: 9}
  validates :endereco,presence: true,length: {minimum: 5,message: "Campo obrigatorio"}
end
