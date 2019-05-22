class Produto < ApplicationRecord
  @@autoId = 0
  attr_accessor :@id,:@descricao,:@precoVenda
  validates :id,presence: true
  validates :descricao,presence: true,length:{minimum: 10}
  validates :precoVenda,presence: true,numericality:

  def initialize(descricao,precoVenda)
    @id = @@autoId+=1
    @descricao = descricao
    @precoVenda = precoVenda
  end
end