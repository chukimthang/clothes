require 'test_helper'

class Frontend::ApplicationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get frontend_application_index_url
    assert_response :success
  end

end
