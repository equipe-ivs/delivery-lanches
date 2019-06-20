require 'test_helper'

class FuncionarioTest < ActiveSupport::TestCase
  test 'Deve salvar um funcionario com todos os campos preenchidos corretamente' do
      funcTeste = Funcionario.new(nome: 'Cleiton', cpf: '01010101010', senha: '123456')
      assert funcTeste.save, "Funcionario salvo."
  end

  test 'Nao deve salvar um funcionario com todos os campos em branco' do
      funcTeste1 = Funcionario.new()
      assert_not funcTeste1.save, "Funcionario com campos em branco."
  end

  test 'Nao deve salvar um funcionario com senha invalida' do
      funcTeste2 = Funcionario.new(nome: 'Cleyton', cpf: '01010101010', senha: '123')
      assert_not funcTeste2.save, "Senha deve ter 6 ou mais caracteres."
  end
end
