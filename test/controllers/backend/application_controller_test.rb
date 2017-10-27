require 'test_helper'

class Backend::ApplicationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get backend_application_index_url
    assert_response :success
  end

end
