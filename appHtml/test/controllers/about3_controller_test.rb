require 'test_helper'

class About3ControllerTest < ActionDispatch::IntegrationTest
  test "should get page3" do
    get about3_page3_url
    assert_response :success
  end

end
