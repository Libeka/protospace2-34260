require 'test_helper'

class Protospace2ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get protospace2_index_url
    assert_response :success
  end

end
