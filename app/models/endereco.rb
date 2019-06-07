class Endereco < ApplicationRecord
  validates :rua,presence: true,length: {minimum: 5,message:'Insira ao menos 5 caracteres'}
  validates :numero,presence: true
  validates :bairro,presence: true,length: {minimum: 5,message:'Insira ao menos 5 caracteres'}
  validates :cidade,presence: true,length: {minimum: 5,message:'Insira ao menos 5 caracteres'}
  def to_s
    'Rua '+rua+', Numero '+numero+', Bairro '+bairro+', Cidade '+cidade
  end
end
