require 'test_helper'

class PersonasControllerTest < ActionDispatch::IntegrationTest
  test "should get users" do
    get personas_users_url
    assert_response :success
  end

end
