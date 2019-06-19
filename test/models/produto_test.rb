require 'test_helper'

class ProdutoTest < ActiveSupport::TestCase
  test 'Deve salvar um produto com todos os campos preenchidos corretamente' do
      produtoTeste = Produto.new(id: 8, descricao: 'ProdutoTest', preco: 2.0)
      assert produtoTeste.save, "Produto salvo."
  end

  test 'Nao deve salvar um produto com descricao numerica' do
      produtoTeste1 = Produto.new(id: 7, descricao: 10, preco: 2.0)
      assert_not produtoTeste1.save, "Produto nao pode ser salvo. Descricao deve ser uma string."
  end

  test 'Nao deve salvar um produto com string como preco' do
      produtoTeste2 = Produto.new(id: 9, descricao: 'Produtinho', preco: 'dois')
      assert_not produtoTeste2.save, "Produto nao pode ser salvo. Preco deve ser numerico."
  end
end
