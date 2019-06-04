require 'test_helper'

class ProdutoEstoquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @produto_estoque = produto_estoques(:one)
  end

  test "should get index" do
    get produto_estoques_url
    assert_response :success
  end

  test "should get new" do
    get new_produto_estoque_url
    assert_response :success
  end

  test "should create produto_estoque" do
    assert_difference('ProdutoEstoque.count') do
      post produto_estoques_url, params: { produto_estoque: { descricao: @produto_estoque.descricao, preco_compra: @produto_estoque.preco_compra, quantidade: @produto_estoque.quantidade } }
    end

    assert_redirected_to produto_estoque_url(ProdutoEstoque.last)
  end

  test "should show produto_estoque" do
    get produto_estoque_url(@produto_estoque)
    assert_response :success
  end

  test "should get edit" do
    get edit_produto_estoque_url(@produto_estoque)
    assert_response :success
  end

  test "should update produto_estoque" do
    patch produto_estoque_url(@produto_estoque), params: { produto_estoque: { descricao: @produto_estoque.descricao, preco_compra: @produto_estoque.preco_compra, quantidade: @produto_estoque.quantidade } }
    assert_redirected_to produto_estoque_url(@produto_estoque)
  end

  test "should destroy produto_estoque" do
    assert_difference('ProdutoEstoque.count', -1) do
      delete produto_estoque_url(@produto_estoque)
    end

    assert_redirected_to produto_estoques_url
  end
end
