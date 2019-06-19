require 'test_helper'

class ProdutoVendaTest < ActiveSupport::TestCase
  test 'Nao deve salvar um produto com quantidade invalida' do
      produtoVendaTeste = ProdutoVenda.new(produto_id: 15, preco_venda: 2.0, quantidade: 'dois')
      assert_not produtoVendaTeste.save, "Produto para a venda nao foi salvo. Quantidade deve ser numerica"
  end

  test 'Nao deve salvar um produto com preco de venda invalido' do
      produtoVendaTeste1 = ProdutoVenda.new(produto_id: 12, preco_venda: 'dois', quantidade: 1)
      assert_not produtoVendaTeste1.save, "Produto para a venda nao foi salvo. Preco de venda deve ser numerico"
  end

  test 'Nao deve salvar um produto com id invalido' do
      produtoVendaTeste2 = ProdutoVenda.new(produto_id: 'mil', preco_venda: '2.0', quantidade: 1)
      assert_not produtoVendaTeste2.save, "Produto para a venda nao foi salvo. ID da venda deve ser numerico"
  end
end
