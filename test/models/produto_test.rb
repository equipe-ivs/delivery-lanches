require 'test_helper'

class ProdutoTest < ActiveSupport::TestCase
  test 'Deve salvar um produto com todos os campos preenchidos corretamente' do
      produtoTeste = Produto.new(id: 8, descricao: 'ProdutoTest', preco: 2.0)
      assert produtoTeste.save, "Produto salvo."
  end

  test 'Nao deve salvar um produto com preco 0.0' do
      produtoTeste1 = Produto.new(id: 7, descricao: 'Produtinho', preco: '0.0')
      assert_not produtoTeste1.save, "Produto nao pode ser salvo. Preco nao pode ser zero."
  end

  test 'Nao deve salvar um produto com id em branco' do
      produtoTeste2 = Produto.new(id: '', descricao: 'Produtinho', preco: '10.0')
      assert_not produtoTeste2.save, "Produto nao pode ser salvo. Id nao pode estar em branco."
  end
end
