require 'test_helper'

class VendaTest < ActiveSupport::TestCase
  test 'Nao deve salvar uma venda com todos os campos em branco' do
      vendaTeste = Venda.new()
      assert vendaTeste.save, "Venda com campos em branco"
  end

  test 'Nao deve salvar uma venda com o id_produto em branco' do
      vendaTeste = Venda.new()
      assert vendaTeste.save, "Venda nao foi salva. Produto nao pode estar em branco"
  end
  
  test 'Nao deve salvar uma venda com a quantidade em branco' do
      vendaTeste = Venda.new(produto_id: '1', cliente_id: '' , quantidade: '', total: '0.0')
      assert vendaTeste.save, "Venda nao foi salva. Quantidade nao pode estar em branco"
  end
end
