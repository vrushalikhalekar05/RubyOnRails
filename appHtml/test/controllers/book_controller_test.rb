require 'test_helper'

class BookControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get book_list_url
    assert_response :success
  end

end
