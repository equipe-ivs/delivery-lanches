require 'test_helper'

class LoginControllerTest < ActionDispatch::IntegrationTest
  test "should get entrar" do
    get login_entrar_url
    assert_response :success
  end

end
