require 'test_helper'

class CarrosControllerTest < ActionDispatch::IntegrationTest
  test "should get carro" do
    get carros_carro_url
    assert_response :success
  end

end
