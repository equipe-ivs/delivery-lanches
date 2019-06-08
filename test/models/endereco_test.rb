require 'test_helper'

class EnderecoTest < ActiveSupport::TestCase
  test 'Deve salvar um endereco com todos os campos preenchidos corretamente' do
      endTeste = Endereco.new(rua: 'Claudio', numero: '10B', bairro: 'Centro', cidade: 'Garanhuns')
      assert endTeste.save, "Endereco salvo."
  end

  test 'Nao deve salvar um endereco com todos os campos em branco' do
      endTeste1 = Endereco.new()
      assert endTeste1.save, "Endereco nao foi salvo. Campos nao podem estar em branco."
  end

  test 'Nao deve salvar um endereco com cidade invalida' do
      endTeste2 = Endereco.new(rua: 'Claudio', numero: '10B', bairro: 'Centro', cidade: 00)
      assert endTeste2.save, "Endereco nao foi salvo. Nome de cidade invalido."
  end
end
