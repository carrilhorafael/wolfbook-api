require 'test_helper'

class RegisterControllerTest < ActionDispatch::IntegrationTest
  test "should get sign_up" do
    get register_sign_up_url
    assert_response :success
  end

end
