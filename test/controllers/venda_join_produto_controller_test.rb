require 'test_helper'

class VendaJoinProdutoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get venda_join_produto_index_url
    assert_response :success
  end

  test "should get new" do
    get venda_join_produto_new_url
    assert_response :success
  end

  test "should get show" do
    get venda_join_produto_show_url
    assert_response :success
  end

  test "should get edit" do
    get venda_join_produto_edit_url
    assert_response :success
  end

end
