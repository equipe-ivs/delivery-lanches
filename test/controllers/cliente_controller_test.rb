require 'test_helper'

class ClienteControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get cliente_new_url
    assert_response :success
  end

end
