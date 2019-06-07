require 'test_helper'

class EnderecosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @endereco = enderecos(:one)
  end

  test "should get index" do
    get enderecos_url
    assert_response :success
  end

  test "should get new" do
    get new_endereco_url
    assert_response :success
  end

  test "should create endereco" do
    assert_difference('Endereco.count') do
      post enderecos_url, params: { endereco: { bairro: @endereco.bairro, cidade: @endereco.cidade, numero: @endereco.numero, rua: @endereco.rua } }
    end

    assert_redirected_to endereco_url(Endereco.last)
  end

  test "should show endereco" do
    get endereco_url(@endereco)
    assert_response :success
  end

  test "should get edit" do
    get edit_endereco_url(@endereco)
    assert_response :success
  end

  test "should update endereco" do
    patch endereco_url(@endereco), params: { endereco: { bairro: @endereco.bairro, cidade: @endereco.cidade, numero: @endereco.numero, rua: @endereco.rua } }
    assert_redirected_to endereco_url(@endereco)
  end

  test "should destroy endereco" do
    assert_difference('Endereco.count', -1) do
      delete endereco_url(@endereco)
    end

    assert_redirected_to enderecos_url
  end
end
