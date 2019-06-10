require 'test_helper'

class ClienteTest < ActiveSupport::TestCase
  test 'Deve salvar um cliente com todos os campos preenchidos corretamente' do
      clienteTeste = Cliente.new(nome: 'Cleiton', cpf: '01010101010', telefone: '01253654789')
      assert clienteTeste.save, "Cliente salvo."
  end

  test 'Nao deve salvar um cliente com todos os campos em branco' do
      clienteTeste1 = Cliente.new()
      assert clienteTeste1.save, "Cliente com campos em branco."
  end

  test 'Nao deve salvar um cliente com cpf em incorreto' do
      clienteTeste2 = Cliente.new(nome: 'Cleyton', cpf: '12345', telefone: '01253654780')
      #CPF deve ter tamanho único = 11
      assert clienteTeste2.save, "Cliente com CPF incorreto."
  end
end
