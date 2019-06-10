require 'test_helper'

class ProdutoEstoqueTest < ActiveSupport::TestCase
  test 'Deve salvar um produto no estoque com todos os campos preenchidos corretamente' do
      estoqueTeste = ProdutoEstoque.new(descricao: 'EstoqueTest', preco_compra: 2.0, quantidade: 1)
      assert estoqueTeste.save, "Produto salvo."
  end

  test 'Nao deve salvar um produto no estoque com quantidade invalida' do
      estoqueTeste1 = ProdutoEstoque.new(descricao: 'EstoqueTest', preco_compra: 2.0, quantidade: 'cem')
      assert estoqueTeste1.save, "Produto nao pode ser salvo. Quantidade tem que ser em numero."
  end

  test 'Nao deve salvar um produto no estoque com preco invalido' do
      estoqueTeste2 = ProdutoEstoque.new(descricao: 'EstoqueTest', preco_compra: 'dois mil', quantidade: 1)
      assert estoqueTeste2.save, "Produto nao pode ser salvo. Preco deve ser em numero."
  end
end
