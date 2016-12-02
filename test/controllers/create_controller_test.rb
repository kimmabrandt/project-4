require 'test_helper'

class CreateControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get create_new_url
    assert_response :success
  end

end
