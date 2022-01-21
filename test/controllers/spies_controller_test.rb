require "test_helper"

class SpiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get spies_index_url
    assert_response :success
  end
end
